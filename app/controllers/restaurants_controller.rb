class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new(resto_params)
    raise
    @restaurant.save
  end


  private

  def resto_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end


end
