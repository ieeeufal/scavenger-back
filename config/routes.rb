Rails.application.routes.draw do

  # default devise routes
  devise_for :users

  # user routing
  # get '/api/users/new', to: 'users#new_user', as: :new_user
  # post '/api/users/create', to: 'users#create_user', as: :create_user
  # get '/api/users', to: 'users#show_all_users', as: :show_all_users
  # get '/api/users/:id', to: 'users#show_user', as: :show_user
  # get '/api/users/:id/edit', to: 'users#edit_user', as: :edit_user
  # post '/api/users/:id/update', to: 'users#update_user', as: :update_user
  # delete '/api/users/:id', to: 'users#delete_user', as: :delete_user

  # event routing

  # location routing

end
