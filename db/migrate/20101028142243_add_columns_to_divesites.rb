class AddColumnsToDivesites < ActiveRecord::Migration
  def self.up
    add_column :divesites, :area_id, :integer
  end

  def self.down
    remove_column :divesites, :area_id
  end
end
