class CreateExifs < ActiveRecord::Migration
  def self.up
    create_table :exifs do |t|
      t.string :camera_brand
      t.string :camera_model
      t.datetime :shot_date_time
      t.integer :picture_id
      t.timestamps
    end
  end

  def self.down
    drop_table :exifs
  end
end
