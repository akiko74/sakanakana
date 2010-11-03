class AddColumnsToDetails < ActiveRecord::Migration
  def self.up
    add_column :detail, :genre_id, :integer
  end

  def self.down
    remove_column :detail, :genre_id
  end
end
