Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :dreams do
    resources :players
  end
  resources :users, :only => [:new, :create, :index]
  resources :players
  resources :moves

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/dreams' => 'dreams#show'
  post '/dreams' => 'dreams#update'

  patch '/player/undraft' => 'players#undraft', :as => :undraft_player
end
