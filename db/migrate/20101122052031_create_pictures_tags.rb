class CreatePicturesTags < ActiveRecord::Migration
  def self.up
    create_table :pictures_tags, :id => false do |t|
      t.integer :picture_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :pictures_tags
  end
end
