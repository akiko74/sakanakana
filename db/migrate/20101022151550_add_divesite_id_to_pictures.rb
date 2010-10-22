class AddDivesiteIdToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :divesite_id, :integer
  end

  def self.down
    remove_column :pictures, :divesite_id
  end
end
