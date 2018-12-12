Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  
resources :companies do
  collection do
    get 'index_home_appliance'
  end
  resources :products
end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
