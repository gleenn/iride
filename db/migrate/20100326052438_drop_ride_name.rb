class DropRideName < ActiveRecord::Migration
  def self.up
    remove_column :rides, :name
  end

  def self.down
    add_column :rides, :name, :string
  end
end
