Rails.application.routes.draw do
  namespace :web do
    get 'events/calendar'
  end
  get 'admin/panel'
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  resources :pages
  get 'home/home'
  resources :sections
  
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#home"
end
