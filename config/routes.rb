Rails.application.routes.draw do
  get '/movies' => 'application#index'
  get '/new_movie' => 'application#new'
  get '/movie/:id' => 'application#show'
  get '/create_movie' => 'application#create'
  get '/movie/:id/edit' => 'application#edit'
  get '/update_movie/:id' => 'application#update'
  get '/movie/:id/destroy' => 'application#destroy'
  root :to => 'application#index'
  
end
