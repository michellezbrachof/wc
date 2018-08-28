Rails.application.routes.draw do
  
  resources :subscribe_users
  resources :on_touch_users
  resources :contactos
  get 'home/index'
  get '/home', to: 'home#index'
  get '/services', to: 'service#index'
  get '/company', to: 'company#index'
  get '/expertise', to: 'expertise#index'
  get '/blog', to: 'blog#index'
  get '/services', to: 'service#index'
  get '/contact', to: 'on_touch_users#index'

  

  root 'home#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
