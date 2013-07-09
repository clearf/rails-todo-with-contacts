RailsTodo::Application.routes.draw do
  # Missed this in class... attempting to make it work
  root :to => 'welcome#index'
  resources :tasks
end
