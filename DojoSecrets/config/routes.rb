Rails.application.routes.draw do
  root 'users#new'
  get 'login' => 'sessions#new', as: 'new_login'
  post 'login' => 'sessions#create', as: 'login'
  delete 'logout' => 'sessions#destroy', as: 'logout'
  resources :users
  resources :secrets
  
end
#        root GET    /                           users#new
#   new_login GET    /login(.:format)            session#new
#       login POST   /login(.:format)            session#create
#      logout DELETE /logout(.:format)           sessions#destroy
#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy
#     secrets GET    /secrets(.:format)          secrets#index
#             POST   /secrets(.:format)          secrets#create
#  new_secret GET    /secrets/new(.:format)      secrets#new
# edit_secret GET    /secrets/:id/edit(.:format) secrets#edit
#      secret GET    /secrets/:id(.:format)      secrets#show
#             PATCH  /secrets/:id(.:format)      secrets#update
#             PUT    /secrets/:id(.:format)      secrets#update
#             DELETE /secrets/:id(.:format)      secrets#destroy


  # get 'sessions/new' => 'sessions#new', as: 'newpage'
  # post 'sessions/new' => 'sessions#create'
  # get 'users/current_user' => 'users#show'
  # get '/index' => 'sessions#index', as: 'index'
  # post 'sessions/register' => 'sessions#register'
  # post 'sessions/login' => 'sessions#login'
  # get 'users/new'

  # get 'users/show'

  # get 'users/edit'

  
