Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :users, :only => [:new, :create, :index]
  resources :players
  resources :moves

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/dream' => 'dream#show'
  post '/dream' => 'dream#update'

  patch '/player/undraft' => 'players#undraft', :as => :undraft_player
end
