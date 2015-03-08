class Song < ActiveRecord::Base
	has_attached_file :upload
	belongs_to :user
	
	validates_attachment_presence :upload
	validates_attachment_size :upload, :less_than => 10.megabytes
end
