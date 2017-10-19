class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.create(review_params)
    if @review.save
      flash[:notice] = "Review added successfully"
      redirect_to @restaurant
    else
      render 'new'
    end
  end


  private
    def review_params
      params.require(:review).permit(:rating, :body, :restaurant_id)
    end
end
