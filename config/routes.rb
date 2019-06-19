Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :recipes
  resources :ingredients
  # resources :login


  # root 'welcome#home'

  get '/login' => 'login#new'
  post '/login' => 'login#create'
  # root 'application#hello'
  # post '/logout' => 'sessions#destroy'


  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'

  # get '/' => ''
end
