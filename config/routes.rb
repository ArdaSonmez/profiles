Rails.application.routes.draw do
  get '/profiles' => 'application#index'
  get '/new_profile' => 'application#new'
  get '/profile/:id' => 'application#show'
  get '/create_profile' => 'application#create'
  get '/profile/:id/edit' => 'application#edit'
  get '/update_profile/:id' => 'application#update'
  get '/profile/:id/destroy' => 'application#destroy'
  root :to => 'application#new'
  
end
