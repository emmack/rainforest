class RatingsController < ApplicationController

  before_filter :load_product
  before_filter :ensure_logged_in, only: [:create, :destroy]




  def show
  	 @rating = Rating.find(params[:id])
  end

  def create
  	@rating = @product.ratings.build(rating_params)
    @rating.user = current_user

    if @rating.save
      redirect_to products_path, notice: 'Rated'
    else
      render 'products/show'
    end
  end

  def destroy
  	@rating = Rating.find(params[:id])
    @rating.destroy
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

 
end

