Rails.application.routes.draw do
  resources :trips
  resources :sites
  resources :trips1
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'welcome/index'

  root :to => "welcome#index"
end
