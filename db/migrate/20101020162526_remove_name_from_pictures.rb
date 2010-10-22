class RemoveNameFromPictures < ActiveRecord::Migration
  def self.up
    remove_column :pictures, :name
    remove_column :pictures, :tags
    remove_column :pictures, :dive_site

  end

  def self.down
    add_column :pictures, :name, :string
    add_column :pictures, :tags, :string
    add_column :pictures, :dive_site, :string
  end
end
