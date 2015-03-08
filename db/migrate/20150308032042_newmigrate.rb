class Newmigrate < ActiveRecord::Migration
  def self.up
    change_table :songs do |t|
      t.attachment :upload
    end
  end

  def self.down
    remove_attachment :songs, :upload
  end
end
