class CreateRides < ActiveRecord::Migration
  def self.up
    create_table :rides, :force => true do |t|
      t.string :rider_name
      t.string :name
      t.float :duration
      t.float :distance
      t.float :average_speed
      t.float :max_speed
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :rides
  end
end
