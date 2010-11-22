class CreateLogs < ActiveRecord::Migration
  def self.up
    create_table :logs do |t|
      t.date :logdate, :null => false
      t.integer :divesite_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :logs
  end
end
