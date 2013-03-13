Ucdb::Application.routes.draw do

  resources :roles
  resources :actors
  resources :movies
  root :to => 'directors#index'

  resources :directors do
    resources :movies do
      resources :roles
    end
  end

  # get "/directors/:director_id/movies" => 'movies#index'
  # get "/directors/:director_id/movies/new" => 'movies#new'
  # post "/directors/:director_id/movies" => 'movies#create'

end
