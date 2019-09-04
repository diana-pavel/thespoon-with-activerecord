class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def index
    @restaurants = Restaurant.all
  end

  def top
    @restaurants = Restaurant.where("stars >= 5").all
  end

  def chef
  end

  def show
  end

  def new
    @restaurant = Restaurant.new(stars: 5)
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path # redirect_to :index
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant # redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars, :chef)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
