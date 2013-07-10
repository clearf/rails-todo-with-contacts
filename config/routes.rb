RailsTodo::Application.routes.draw do
 root :to => 'welcome#index'
 get '/tasks' => 'tasks#index' #List of tasks
 get '/tasks/new' => 'tasks#new' #New task
 post '/tasks' => 'tasks#create'
 get '/tasks/:id' => 'tasks#show' #Detailed list

 get '/tasks/:id/edit' => 'tasks#edit'
 put '/tasks/:id' => 'tasks#update'
 delete '/tasks/:id' => 'tasks#destroy'

 get '/contacts' => 'contacts#index' #List of contacts
 get '/contacts/new' => 'contacts#new' #New contact
 post '/contacts' => 'contacts#create'
 get '/contacts/:id' => 'contacts#show' #Detailed view of contact
 get '/contacts/:id/edit' => 'contacts#edit'

end
