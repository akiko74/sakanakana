class ChangeLogdateToDatetime < ActiveRecord::Migration
  def self.up
      change_column :divelogs, :logdate, :datetime
  end

  def self.down
      change_column :divelogs, :logdate, :date
  end
end
