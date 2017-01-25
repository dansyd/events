# == Route Map
#
#      Prefix Verb   URI Pattern                       Controller#Action
#        root GET    /                                 pages#index
#      events GET    /events(.:format)                 events#index
#             POST   /events(.:format)                 events#create
#   new_event GET    /events/new(.:format)             events#new
#  edit_event GET    /events/:id/edit(.:format)        events#edit
#       event GET    /events/:id(.:format)             events#show
#             PATCH  /events/:id(.:format)             events#update
#             PUT    /events/:id(.:format)             events#update
#             DELETE /events/:id(.:format)             events#destroy
#       users GET    /users(.:format)                  users#index
#             POST   /users(.:format)                  users#create
#    new_user GET    /users/new(.:format)              users#new
#        user PATCH  /users/:id(.:format)              users#update
#             PUT    /users/:id(.:format)              users#update
# event_rsvps POST   /events/:event_id/rsvps(.:format) rsvps#create
#             GET    /events(.:format)                 events#index
#             POST   /events(.:format)                 events#create
#             GET    /events/new(.:format)             events#new
#             GET    /events/:id/edit(.:format)        events#edit
#             GET    /events/:id(.:format)             events#show
#             PATCH  /events/:id(.:format)             events#update
#             PUT    /events/:id(.:format)             events#update
#             DELETE /events/:id(.:format)             events#destroy
#   user_edit GET    /user/edit(.:format)              users#edit
#     profile GET    /profile(.:format)                users#show
#       login GET    /login(.:format)                  session#new
#             POST   /login(.:format)                  session#create
#             DELETE /login(.:format)                  session#destroy
#

Rails.application.routes.draw do

  root :to => 'pages#index'
  resources :events, :only => [:index, :show, :edit, :update, :new, :create, :destroy]
  resources :users, :only => [:new, :create, :update, :index]

  resources :events do
    resources :rsvps, :only => [:create]
  end

  get '/user/edit' => 'users#edit'
  get '/profile' => 'users#show'

  get '/login' => 'session#new' #ONLY CONTROLLER WITH SINGULAR NAME
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
