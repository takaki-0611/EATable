class Public::RestaurantsController < ApplicationController
  def index
    @total_restaurants = Restaurant.all
    @restaurants = Restaurant.all.page(params[:page]).per(8)
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  private

  def restaurants_params
    params.require(:restaurant).permit(:user_id, :name, :body, :phone_number, :email, :url)
  end
end
