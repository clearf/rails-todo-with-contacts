Todos::Application.routes.draw do


  root :to => 'welcome#index'

  ###Tasks###
  get '/todos' => 'todos#index'
  get '/todos/new' => 'todos#new'
  get '/todos/:id' => 'todos#show'
  post '/todos' => 'todos#create'
  get '/todos/:id/edit' => 'todos#edit'
  put '/todos/:id' => 'todos#update'
  delete '/todos/:id' => 'todos#destroy'


end

