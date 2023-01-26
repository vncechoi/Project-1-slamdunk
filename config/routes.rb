Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :show, :edit]
  resources :dreams do
    resources :players
    member do 
      patch :undraft_player
    end
  end
  resources :moves
  resources :players

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/dreams' => 'dreams#show'
  post '/dreams' => 'dreams#update', :as => :update_dreams

  patch '/dreams/:dream_id/players/:player_id/undraft' => 'players#undraft', :as => :undraft_player
end
