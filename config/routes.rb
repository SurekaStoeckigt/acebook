Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index'
  # get'posts/new', to: 'posts#new'
  get '/sign_up', to: 'sign_up#index'
  post '/sign_up', to: 'sign_up#create'
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'

  resources :posts, :sign_up, :users
  root to:'posts#index'
end
