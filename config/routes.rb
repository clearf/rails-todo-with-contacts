Todos::Application.routes.draw do
  root :to => 'welcome#index'
  resources :tasks
  get '/tasks/:id/add_contact', to: 'tasks#add'
end