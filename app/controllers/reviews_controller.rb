class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  private
   def review_params
    params.require(:review).permit(:content, :rating, :restaurant_id)
  end
end
