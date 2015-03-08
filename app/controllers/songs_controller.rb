class SongsController < ApplicationController

	#GET /songs
	def index
		@songs = Song.all
	end
	
	#GET /songs/new
	def new 
		@song = Song.new
	end
	
	#POST /songs
	def create
		@song = Song.new(song_params)
		if @song.save
			redirect_to action: 'index'
		else
			render 'new'
		end
	end
	
	private
		def song_params
			params.require(:song).permit(:upload)
		end
end
