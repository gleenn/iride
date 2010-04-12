class CreateRiders < ActiveRecord::Migration
  def self.up
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :riders
  end
end
