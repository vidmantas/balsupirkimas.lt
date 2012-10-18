class Spot < ActiveRecord::Base
  acts_as_gmappable :process_geocoding => false

  attr_accessible :activity, :contacts, :district, :latitude, :longitude, :voters, :gmaps, :party

  scope :recent, ->(n=3) { order('id desc').limit(n) }

  def to_s
    [activity, party || '-'].join(', ')
  end
end
