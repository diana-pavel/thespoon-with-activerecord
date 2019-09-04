Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # # What are all the routes we need for Restaurants?
  # # Reading
  # # index
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # # show
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # Creating
  # # new
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # # create
  # post 'restaurants', to: 'restaurants#create'

  # # Updating
  # # edit
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # # update
  # put 'restaurants/:id', to: 'restaurants#update'
  # #
  # # Deleting
  # # destroy
  # delete 'restaurants/:id', to: 'restaurants#destroy'

  resources :restaurants
end
