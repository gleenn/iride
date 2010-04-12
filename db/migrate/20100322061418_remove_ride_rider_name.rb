class RemoveRideRiderName < ActiveRecord::Migration
  def self.up
    remove_column :rides, :rider_name
  end

  def self.down
    add_column :rides, :rider_name, :string
  end
end
