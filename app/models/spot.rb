class Spot < ActiveRecord::Base
  acts_as_gmappable :process_geocoding => false

  attr_accessible :activity, :contacts, :district, :latitude, :longitude, :voters, :gmaps, :party

  scope :recent, ->(n=3) { order('id desc').limit(n) }
  scope :visible, where(deleted_at: nil)

  def to_s
    [activity, party || '-'].join(', ')
  end

  def mark_destroyed(admin)
    self.deleted_at = Time.now
    self.deleted_by = admin.id
    self.save!
  end
end
