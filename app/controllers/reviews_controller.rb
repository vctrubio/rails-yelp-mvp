class ReviewsController < ApplicationController

  def new
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = Review.new
  end

  def create
    @review =Review.new(review_params)
    @review.restaurant =Restaurant.find(params[:restaurant_id])

    if @review.save
      redirect_to restaurants_path, notice: 'Article was successfully created.'
    else
      render :new
    end
    
  end
  
  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end


# def new
#   # we need @restaurant in our `simple_form_for`
#   @restaurant = Restaurant.find(params[:restaurant_id])
#   @review = Review.new
# end

# def create
#   @review = Review.new(review_params)
#   # we need `restaurant_id` to asssociate review with corresponding restaurant
#   @review.restaurant = Restaurant.find(params[:restaurant_id])
#   @review.save
# end

# private

# def review_params
#   params.require(:review).permit(:content)
# end