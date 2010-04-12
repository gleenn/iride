class AddTrailUserId < ActiveRecord::Migration
  def self.up
    add_column :trails, :user_id, :integer
  end

  def self.down
    remove_column :trails, :user_id
  end
end
