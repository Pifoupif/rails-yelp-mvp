class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:restaurant_id])
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
