
Tagit::Application.routes.draw do

	resources :projects do
	  	resources :tags
	end

  resources :projectparticipants

  authenticated :user do
    root :to => 'projects#index'
  end
  
  
  devise_for :users
  resources :users

  root :to => "home#welcome"

  resources :tags
  root to: "tags#index"

  match '/help' => 'home#help'
	
end
