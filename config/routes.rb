Rails.application.routes.draw do

  # get '/vehicles', to: 'vehicles#index'
  # get '/vehicles/:id', to: 'vehicles#show'
  # post '/vehicles', to: 'vehicles#create'
  # put '/vehicles/:id', to: 'vehicles#update'
  # delete '/vehicles/:id', to: 'vehicles#destroy'

  # get '/types', to: 'types#index'
  # get '/types/:id', to: 'types#show'
  # post '/types', to: 'types#create'
  # put '/types/:id', to: 'types#update'
  # delete '/types/:id', to: 'types#destroy'

  # get '/years', to: 'years#index'
  # get '/years/:id', to: 'years#show'
  # post '/years', to: 'years#create'
  # put '/years/:id', to: 'years#update'
  # delete '/years/:id', to: 'years#destroy'
resources :vehicles do
  resources :types 
  resources :years
end
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
