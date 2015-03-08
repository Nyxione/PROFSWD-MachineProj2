class Ugh < ActiveRecord::Migration
  def change
	add_column :songs, :name
	remove_column :songs, upload_name
  end
end
