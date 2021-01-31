Rails.application.routes.draw do
  root to: 'users#index'

  get '/movies/select', to: 'movies#select'
  
  resources :users do
    member do
      get :rent_movies
      get :rent_series
      post :create_movie_rent
      post :create_series_rent
    end
  end
  resources :movies
  resources :series
end
