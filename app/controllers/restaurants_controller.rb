class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:read, :update, :show]
  
  def index
    @index = Restaurant.all
  end

  def show
    
  end

  def new
    @restaurant = Restaurant.new
  end

  def update #should fucking be edit
  end

  def delete #not added by terminal
    @restaurant.destroy
    #redirect_to ?¿¿¿¿?, notice: 'Article was successfully destroyed.'
  end

  def create #not added by terminal 
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant), notice: 'Article was successfully created.'
    else
      render :new
    end
    #or restaurants_url
   
  end


  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id]) 
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end

#restaurant has name, adress, phone_number, catagory
