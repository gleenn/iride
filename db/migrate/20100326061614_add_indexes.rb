class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :rides, :user_id
  end

  def self.down
    remove_index :rides, :user_id
  end
end
