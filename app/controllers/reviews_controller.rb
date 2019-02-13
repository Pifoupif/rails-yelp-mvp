class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to review_path(@review)
    else
      render 'new'
  end

  def new
    @review = Review.new
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
