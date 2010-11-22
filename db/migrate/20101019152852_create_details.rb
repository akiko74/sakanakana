class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.string :name, :null => false
      t.string :englishname
      t.string :othername
      t.text :description
      t.integer :genre_id
      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
