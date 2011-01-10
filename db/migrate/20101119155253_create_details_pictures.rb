class CreateDetailsPictures < ActiveRecord::Migration
  def self.up
    create_table :details_pictures, :id => false do |t|
      t.integer :detail_id
      t.integer :picture_id
    end
  end

  def self.down
    drop_table :details_pictures
  end
end
