Rails.application.routes.draw do
  # resources :theme_installs
  get '/theme_install', to: 'theme_installs#index'
  get '/theme_install/new', to: 'theme_installs#new'
  post '/theme_install', to: 'theme_installs#create'
  delete '/theme_install/:id', to: 'theme_installs#destroy'
  root :to => 'home#index'
  # get 'install', to: 'install#index'
  # post 'install/create', to: 'install#create'

  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
