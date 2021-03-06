class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def show
    @restaurant = Restaurant.find(params[:id])
  end


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(restaurant_params)
    if @restaurant.save
      flash[:notice] = "Restaurant added successfully"
      redirect_to @restaurant
    else
      render 'new'
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :description, :zip)
  end

end
