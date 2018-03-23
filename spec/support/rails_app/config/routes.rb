Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'application#index'

  get '/my_route', to: 'application#index'
  get '/my_route_2', to: 'application#index', as: :test_route
  put '/my_route', to: 'application#index'
  post '/my_route', to: 'application#index'
  patch '/my_route', to: 'application#index'
  delete '/my_route', to: 'application#index'

  resources :phish_songs

  get '/phish_covers/:phish_song_id', to: 'phish_songs#show'
  get '/phish_covers/:phish_song_id?year_id=1', to: 'phish_songs#show', as: :has_param

  namespace :jam_bands do
    resources :phish_songs
  end
end
