Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  Rails.application.routes.draw do
    # verb 'path', to: 'controller#action'
    resources :categories, :nominees #, only:[:show, :index]
    get '/movies', to: 'movies#index'
    # get '/categories', to: 'categories#index'
    # get '/categories/:id', to: 'categories#show'
    # get '/nominees', to: 'nominees#index'
    # get '/nominees/:id', to: 'nominees#show'
  end
  # Defines the root path route ("/")
  # root "posts#index"
end
