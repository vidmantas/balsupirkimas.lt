class WelcomeController < ApplicationController
  def index
    @json = Spot.all.to_gmaps4rails do |spot, marker|
      marker.infowindow render_to_string(partial: 'spots/infowindow', locals: { spot: spot })
      marker.title spot.activity
      marker.json({ id: spot.id })
    end
  end
end
