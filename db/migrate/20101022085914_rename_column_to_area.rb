class RenameColumnToArea < ActiveRecord::Migration
  def self.up
    rename_column :areas, :name, :areaname
  end

  def self.down
    rename_column :areas, :areaname, :name
  end
end
