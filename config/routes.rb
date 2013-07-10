Todos::Application.routes.draw do
  root :to => 'welcome#index'
  resources :tasks
  resources :contacts
  get '/tasks/:id/add', to: 'tasks#add'
  put '/tasks/:id/add', to: 'tasks#add_update'
end