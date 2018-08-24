Rails.application.routes.draw do
  
  resources :subscribe_users
  resources :on_touch_users
  get 'home/index'
  get '/home', to: 'home#index'
  
  resources :contactos
  
  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
