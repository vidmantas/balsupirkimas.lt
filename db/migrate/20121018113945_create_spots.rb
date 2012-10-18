class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.string :activity
      t.string :district
      t.string :voters
      t.string :contacts
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
