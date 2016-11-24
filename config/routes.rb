Rails.application.routes.draw do

  # default devise routes
  devise_for :users

  # user routing
  get '/users/new', to: 'users#new_user', as: :new_user
  post '/users/create', to: 'users#create_user', as: :create_user
  get '/users', to: 'users#show_all_users', as: :show_all_users
  get '/users/:id', to: 'users#show_user', as: :show_user
  get '/users/:id/edit', to: 'users#edit_user', as: :edit_user
  post 'users/:id/update', to: 'users#update_user', as: :update_user
  delete '/users/:id', to: 'users#delete_user', as: :delete_user

  # event routing

  # location routing

end
