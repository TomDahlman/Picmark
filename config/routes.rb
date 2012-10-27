Picmarks::Application.routes.draw do
  
  get '/pictures' => 'picmarks#index', :as => :all_pictures
  # get '/pictures/:id' => 'picmarks#show', :as => :one_picture
  
  get '/pictures/new' => 'picmarks#new', :as => :new_picture
  post '/pictures' => 'picmarks#create'
  
  get '/pictures/edit/:id' => 'picmarks#show', :as => :edit_picture
  put '/pictures' => 'picmarks#Update'
  
  delete '/pictures' => 'picmarks#destroy'
  
end
