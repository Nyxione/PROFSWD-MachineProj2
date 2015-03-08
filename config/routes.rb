Rails.application.routes.draw do

	resources :users
	resources :songs
	
	root 'users#new'

	get 	'login'		=> 'sessions#new'
	get 	'songs'		=> 'songs#index'
	get 	'songs/new' => 'songs#new'
	
	post 	'login'		=> 'sessions#create'
	post 	'songs'		=> 'songs#create'
	
	delete 	'logout'	=> 'sessions#destroy'
	
	

end