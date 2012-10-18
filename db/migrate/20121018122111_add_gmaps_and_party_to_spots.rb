class AddGmapsAndPartyToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :gmaps, :boolean
    add_column :spots, :party, :string
  end
end
