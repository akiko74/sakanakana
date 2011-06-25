class RemoveLogdateFromDivelogs < ActiveRecord::Migration
  def self.up
    remove_column :divelogs, :logdate
    add_column :divelogs, :start_date, :datetime, :null => false
    add_column :divelogs, :end_date, :datetime, :null => false
  end

  def self.down
    add_column :divelogs, :logdate, :datetime, :null => false
    remove_column :divelogs, :start_date
    remove_column :divelogs, :end_date
  end
end
