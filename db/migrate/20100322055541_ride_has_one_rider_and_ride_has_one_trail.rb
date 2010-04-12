class RideHasOneRiderAndRideHasOneTrail < ActiveRecord::Migration
  def self.up
    add_column :rides, :rider, :integer
    add_column :rides, :trail, :integer
  end

  def self.down
    remove_column :rides, :rider
    remove_column :rides, :trail
  end
end
