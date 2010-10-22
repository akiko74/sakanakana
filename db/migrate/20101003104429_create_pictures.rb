class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.integer :pic_id
      t.string :name
      t.string :dive_site
      t.datetime :pict_date
      t.string :tags

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
