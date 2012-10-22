class WelcomeController < ApplicationController
  caches_page :index
  
  def index
    @json = Spot.visible.to_gmaps4rails do |spot, marker|
      marker.infowindow render_to_string(partial: 'spots/infowindow', locals: { spot: spot })
      marker.title spot.activity
      marker.json({ id: spot.id })
    end
  end
end
