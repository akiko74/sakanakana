class CreateDivesites < ActiveRecord::Migration
  def self.up
    create_table :divesites do |t|
      t.string :point

      t.timestamps
    end
  end

  def self.down
    drop_table :divesites
  end
end
