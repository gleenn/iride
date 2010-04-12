class RemoveRideRiderAddRideUser < ActiveRecord::Migration
  def self.up
    remove_column :rides, :rider
    add_column :rides, :user, :integer
  end

  def self.down
    add_column :rides, :rider, :integer
    remove_column :rides, :user
  end
end
