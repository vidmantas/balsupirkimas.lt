class Spot < ActiveRecord::Base
  acts_as_gmappable :process_geocoding => false

  attr_accessible :activity, :contacts, :district, :latitude, :longitude, :voters, :party, :description

  scope :recent, ->(n=3) { order('id desc').limit(n) }
  scope :visible, where(deleted_at: nil)

  validates_presence_of :activity, :district, :voters, :party

  paginates_per 20

  def to_s
    [activity, party || '-'].join(', ')
  end

  def mark_destroyed(admin)
    self.deleted_at = Time.now
    self.deleted_by = admin.id
    self.save!
  end

  def log_user_info(request)
    self.user_ip = request.remote_ip.to_s
    self.user_agent = request.env['HTTP_USER_AGENT'].to_s
  end
end
