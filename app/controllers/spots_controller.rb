class SpotsController < ApplicationController
  before_filter :authenticate, only: %w(edit update destroy)
  after_filter :expire_pages, only: %w(create update destroy)

  # GET /spots
  # GET /spots.json
  def index
    @spots = Spot.visible.order('id desc').page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spots }
    end
  end

  # GET /spots/1
  # GET /spots/1.json
  def show
    @spot = Spot.visible.find(params[:id])
    @json = [@spot].to_gmaps4rails
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spot }
    end
  end

  # GET /spots/new
  # GET /spots/new.json
  def new
    @spot = Spot.new
    lat, lng = params[:ltng].scan(/\((.+)\)/).flatten.first.split(',')
    @spot.latitude = lat
    @spot.longitude = lng

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spot }
    end
  end

  # GET /spots/1/edit
  def edit
    @spot = Spot.find(params[:id])
  end

  # POST /spots
  # POST /spots.json
  def create
    @spot = Spot.new(params[:spot])
    @spot.log_user_info(request)

    respond_to do |format|
      if @spot.save
        format.html { redirect_to @spot, notice: 'Spot was successfully created.' }
        format.json { render json: @spot, status: :created, location: @spot }
      else
        format.html { render action: "new" }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spots/1
  # PUT /spots/1.json
  def update
    @spot = Spot.find(params[:id])

    respond_to do |format|
      if @spot.update_attributes(params[:spot])
        format.html { redirect_to @spot, notice: 'Spot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spots/1
  # DELETE /spots/1.json
  def destroy
    @spot = Spot.find(params[:id])
    @spot.mark_destroyed(current_admin)

    respond_to do |format|
      format.html { redirect_to spots_url }
      format.json { head :no_content }
    end
  end

  private

  def authenticate
    flash[:notice] = 'FU!'
    redirect_to root_url and return unless admin_signed_in?
  end

  def expire_pages
    expire_page controller: 'welcome', action: 'index'
    expire_page controller: 'statistics', action: 'index'
  end
end
