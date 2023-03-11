Rails.application.routes.draw do
  devise_for :users
  resources :events
  #get 'events/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "events#index"

   get 'users/:id', to:'users#show', as: 'user'
end
