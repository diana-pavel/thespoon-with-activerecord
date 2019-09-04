class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new(stars: 5)
  end

  def create
    Restaurant.create(restaurant_params)
    redirect_to restaurants_path # redirect_to :index
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant # redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
