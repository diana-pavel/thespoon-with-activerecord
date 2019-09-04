class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    # New Review
    # Add the info from the user to the review
    @review = Review.new(review_params)
    # Link the review to the restaurant
    @review.restaurant = @restaurant
    # Save the review
    @review.save
    # Redirect to restaurant#show
    redirect_to @restaurant
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
