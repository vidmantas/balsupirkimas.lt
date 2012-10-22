class StatisticsController < ApplicationController
  def index
    @parties = Spot.visible.group('party').count
    @districts = Spot.visible.group('district').count
  end
end
