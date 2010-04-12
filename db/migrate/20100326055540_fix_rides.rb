class FixRides < ActiveRecord::Migration
  def self.up
    remove_column :rides, :user
    add_column :rides, :user_id, :integer
  end

  def self.down
    add_column :rides, :user, :integer
    remove_column :rides, :user_id
  end
end
