class AddMoreDataToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :user_ip, :string
    add_column :spots, :user_agent, :string
  end
end
