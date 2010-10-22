class RenameColumnToTag < ActiveRecord::Migration
  def self.up
    rename_column :tags, :tag, :tagname
  end

  def self.down
    rename_column :tags, :tagname, :tag
  end
end
