class AddImageToPicture < ActiveRecord::Migration
  def self.up
    add_column :pictures, :image_file_name, :string
    add_column :pictures, :image_content_type, :string
    add_column :pictures, :image_file_size, :integer
    add_column :pictures, :image_updated_at, :datetime
    remove_column :pictures, :picturl, :string
  end

  def self.down
    add_column :pictures, :image_file_name
    add_column :pictures, :image_content_type    
    add_column :pictures, :image_filesize
    add_column :pictures, :image_updated_at
    remove_column :pictures, :picturl
  end
end
