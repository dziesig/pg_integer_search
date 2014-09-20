class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :officers do |t|
      t.string   :name
      t.integer  :rank
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :officers
  end
end
