class RenameColumnToDivesites < ActiveRecord::Migration
  def self.up
    rename_column :pictures, :pic_id, :pictid
    rename_column :pictures, :pict_date, :pictdate
  end

  def self.down
    rename_column :pictures, :pictid, :pic_id
    rename_column :pictures, :pictdate, :pict_id
  end
end
