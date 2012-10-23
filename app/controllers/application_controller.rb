class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_recent
  helper_method :recaptcha_enabled?

  def recaptcha_enabled?
    ENV['enable_recaptcha'] == '1' 
  end

  private
  
  def load_recent
    @recent_entries = Spot.visible.recent(5)
  end
end
