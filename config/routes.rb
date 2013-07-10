Todos::Application.routes.draw do
  root :to => 'welcome#index'
  resources :tasks
  resources :contacts
  get '/tasks/:id/add', to: 'tasks#add'
  put '/tasks/:id/add', to: 'tasks#add_update'
  get '/tasks/:id/remove', to: 'tasks#remove'
  put '/tasks/:id/remove', to: 'tasks#remove_update'
end