class AddStarttimeToDivelogs < ActiveRecord::Migration
  def self.up
    add_column :divelogs, :start_time, :datetime, :null => false
    add_column :divelogs, :end_time, :datetime, :null => false
  end

  def self.down
    remove_column :divelogs, :end_time
    remove_column :divelogs, :start_time
  end
end
