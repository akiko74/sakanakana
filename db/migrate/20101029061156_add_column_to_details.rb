class AddColumnToDetails < ActiveRecord::Migration
  def self.up
    add_column :pictures, :picturl, :string
  end

  def self.down
    remove_column :pictures, :picturl
  end
end
