class CreateTrailPoints < ActiveRecord::Migration
  def self.up
    create_table :trail_points do |t|
      t.float :lat
      t.float :long

      t.timestamps
    end
  end

  def self.down
    drop_table :trail_points
  end
end
