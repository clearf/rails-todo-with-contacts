RailsTodo::Application.routes.draw do
   root :to => 'welcome#index'

  resources :tasks do
  end

  resources :contacts do
  end

end