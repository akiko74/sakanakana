class ChangeColumnToPictures < ActiveRecord::Migration
  def self.up
    change_column :pictures, :pictid, :string
  end

  def self.down
    change_column :pictures, :pictid, :string
  end
end
