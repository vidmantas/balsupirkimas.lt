class AddDeletedAtDeletedByToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :deleted_at, :datetime
    add_column :spots, :deleted_by, :integer
  end
end
