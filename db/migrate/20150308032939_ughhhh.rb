class Ughhhh < ActiveRecord::Migration
  def change
	add_column :songs, :name, :string
	remove_column :songs, :upload_name
  end
end
