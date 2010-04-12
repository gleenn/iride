class CreateTrails < ActiveRecord::Migration
  def self.up
    create_table :trails do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :trails
  end
end
