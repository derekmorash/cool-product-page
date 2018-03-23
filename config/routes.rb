Rails.application.routes.draw do
  resources :theme_installations
  resources :theme_installs
  root :to => 'home#index'
  # get 'install', to: 'install#index'
  # post 'install/create', to: 'install#create'

  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
