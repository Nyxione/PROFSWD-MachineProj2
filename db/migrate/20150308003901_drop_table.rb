class DropTable < ActiveRecord::Migration
  def change
	drop_table :songs
	create_table :songs do |t|
		t.attachment :mp3
		t.timestamps
	end
  end
end
