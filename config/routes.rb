Rails.application.routes.draw do

  resources :users
  resources :cheets

  # Hey future Bailey! You are awesome. Remember, this is for the feed:
  get '/cheets' => 'cheets#index'
  get '/new' => 'cheets#new'

  root 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
