class RenameRideDescriptionToRideComments < ActiveRecord::Migration
  def self.up
    rename_column :rides, :description, :comments
  end

  def self.down
    rename_column :rides, :comments, :description
  end
end
