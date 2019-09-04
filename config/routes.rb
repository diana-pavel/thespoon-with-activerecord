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

  # get 'restaurants/top', to: 'restaurants#top', as: :top_restaurants

  resources :restaurants do
    resources :reviews, only: [:new, :create]

    collection do
      get :top
    end

    member do
      get :chef
    end
  end

  namespace :admin do
    resources :restaurants, only: :index
  end

  # GET /restaurants/45/reviews => INDEX the reviews for Restaurant 45
  # link_to "Reviews for this restaurant", restaurant_reviews_path(45)
  # GET /restaurants/45/reviews/new => NEW review for Restaurant 45
  # POST /restaurants/45/reviews => CREATE a review for Restaurant 45


end
