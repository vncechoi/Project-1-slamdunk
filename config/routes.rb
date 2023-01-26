Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :show, :edit]
  resources :dreams do
    resources :players do
      resources :moves, only: [:edit, :update, :destroy]
    end
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

  post '/dreams/:dream_id/players' => 'dreams#add_player', :as => :add_player

  patch '/dreams/:dream_id/players/:player_id/moves/:move_id' => 'dreams#select_move', :as => :select_move

  patch '/dreams/:dream_id/players/:player_id' => 'dreams#undraft_player', :as => :undraft_player
end