class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_recent

  private
  
  def load_recent
    @recent_entries = Spot.visible.recent(5)
  end
end
