class ChangeColumnsToPictures < ActiveRecord::Migration
  def self.up
    change_column :pictures, :divesite_id, :integer, :null => true
    change_column :pictures, :divelog_id, :integer, :null => true
  end

  def self.down
    change_column :pictures, :divesite_id, :integer, :null => false
    change_column :pictures, :divelog_id, :integer, :null => false
  end
end
