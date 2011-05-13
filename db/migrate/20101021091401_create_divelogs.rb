class CreateDivelogs < ActiveRecord::Migration
  def self.up
    create_table :divelogs do |t|
      t.datetime :logdate, :null => false
      t.integer :divesite_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :divelogs
  end
end
