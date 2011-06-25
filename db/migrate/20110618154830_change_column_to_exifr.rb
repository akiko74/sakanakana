class ChangeColumnToExifr < ActiveRecord::Migration
  def self.up
    change_column :exifs, :picture_id, :integer, :null => false
  end

  def self.down
    change_column :exifs, :picture_id, :integer
  end
end
