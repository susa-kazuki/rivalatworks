Rails.application.routes.draw do
  devise_for :users
  root 'rivals#index'
  get 'rivals' => 'rivals#index'
  get 'rivals/new' => 'rivals#new'
  get '/search' => 'rivals#search'
  post 'rivals' => 'rivals#create'
  get '/users/:id' => 'users#show'
  delete '/rivals/:id' => 'rivals#destroy'
  patch '/rivals/:id' => 'rivals#update'
  get '/rivals/:id/edit' => 'rivals#edit'
  get 'rivals/:id/comments/new' => 'comments#new'
  post '/rivals/:rival_id/comments' => 'comments#create'
  get '/rivals/:rival_id/comments' => 'comments#index'
end
