class AddColumnsToLogs < ActiveRecord::Migration
  def self.up
    add_column :logs, :divesite_id, :integer
  end

  def self.down
    remove_columm :logs, :divesite_id
  end
end
