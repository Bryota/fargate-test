Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    resources :health_check, only: :index
  end

  get '/', to: 'home#index'
  get '/csv', to: 'home#csv'
  get '/csv_invalid', to: 'home#csv_invalid'
  get '/show', to: 'home#show'

end
