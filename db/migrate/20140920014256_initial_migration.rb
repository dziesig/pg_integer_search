class InitialMigration < ActiveRecord::Migration
  def self.up
    change_column :users, :state, :string, :limit => 255, :default => "active"
  end

  def self.down
    change_column :users, :state, :string, default: "invited"
  end
end
