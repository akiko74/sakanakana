class RenameColumnToDivesite < ActiveRecord::Migration
  def self.up
    rename_column :divesites, :point, :pointname
    rename_column :genres, :name, :genrename
    rename_column :logs, :log, :logdate
  end

  def self.down
    rename_column :divesites, :pointname, :point
    rename_column :genres, :genrename, :name
    rename_column :logs, :logdate, :log
  end
end
