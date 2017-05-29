Rails.application.routes.draw do

  resources :users do
    resources :cheets
  end

  root 'users#index'

  # Hey future Bailey! You are awesome. Remember, this is for the feed:
  get '/cheets' => 'cheets#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
