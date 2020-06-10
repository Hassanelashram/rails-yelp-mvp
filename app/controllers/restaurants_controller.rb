class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :edit, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    @cats = ["chinese", "italian", "japanese", "french", "belgian"]
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    redirect_to @restaurant if @restaurant.save
  end


  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
