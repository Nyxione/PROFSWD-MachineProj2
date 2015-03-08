class Addremovestuff < ActiveRecord::Migration
  def change
	remove_column :songs, :mp3
	add_column :songs, :upload_name, :string
  end
end
