# == Route Map
#
#    Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         pages#index
#    events GET    /events(.:format)         events#index
#     event GET    /events/:id(.:format)     events#show
#     users GET    /users(.:format)          users#index
#           POST   /users(.:format)          users#create
#  new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#      user PATCH  /users/:id(.:format)      users#update
#           PUT    /users/:id(.:format)      users#update
#     login GET    /login(.:format)          session#new
#           POST   /login(.:format)          session#create
#           DELETE /login(.:format)          session#destroy
#

Rails.application.routes.draw do
  root :to => 'pages#index'
  resources :events, :only => [:index, :show]
  resources :users, :only => [:new, :create, :edit, :update, :index]

  get '/login' => 'session#new' #ONLY CONTROLLER WITH SINGULAR NAME
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
