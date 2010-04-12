class AddTrailTrailPoints < ActiveRecord::Migration
  def self.up
    add_column :trail_points, :trail_id, :integer
  end

  def self.down
    remove_column :trail_points, :trail_id
  end
end
