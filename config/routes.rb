Picmarks::Application.routes.draw do

  get '/pictures' => 'picmarks#index', :as => :all_pictures # try to use standard conventions for your named routes


  get '/pictures/new' => 'picmarks#new', :as => :new_picture
  post '/pictures' => 'picmarks#create'

  get '/pictures/:id' => 'picmarks#show', :as => :one_picture # try to use standard conventions for your named routes

  get '/pictures/edit/:id' => 'picmarks#edit', :as => :edit_picture
  put '/pictures/:id' => 'picmarks#update'

  delete '/pictures' => 'picmarks#destroy'

end
