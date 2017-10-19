class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car  = Car.new
    @manufacturers =  Manufacturer.all
  end

  def create
    @manufacturers = Manufacturer.all 
    @manufactuer =  Manufacturer.find(params[:car][:manufacturer])
    @car = @manufactuer.cars.new(car_params)
    if @car.save
      flash[:notice] = 'Car successfully added'
      redirect_to cars_path
    else
      render 'new'
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :year, :mileage, :color, :description)
  end

end
