Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/security_answers/verify", to: "security_answers#verify"
  resources :users

  resources :recipes
  resources :ingredients
  resources :login
  resources :security_questions
  # get "/security_answers/:id"
  resources :security_answers
  delete "/logout", to: "login#destroy"


 #this --> resources :login, only: [:new, :create] is the same as   get '/login' => 'login#new' and post '/login' => 'login#create'

  # root 'welcome#home'

  # get '/login' => 'login#new'
  # post '/login' => 'login#create'
  # root 'application#hello'
  # post '/logout' => 'sessions#destroy'


  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'

  # get '/' => ''
end
