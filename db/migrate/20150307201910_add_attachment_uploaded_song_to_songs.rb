class AddAttachmentUploadedSongToSongs < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :uploaded_song
    end
  end

  def self.down
    remove_attachment :songs, :uploaded_song
  end
end
