class LikesController < ApplicationController
	before_filter :load_product
  before_filter :ensure_logged_in, only: [:create, :destroy]



  def show
  	
          @like = Like.find(params[:id])
       

  end

  def create
  	@like = @product.likes.build(like_params)
    @like.user = current_user

      if @like.save 
        redirect_to product_path(@product), notice: 'Product has been liked.'
      else
        render 'products/show'
      end

  end

  def destroy
    session[:like] = nil
    redirect_to product_path(@product), notice: "Unliked!"
  end

  private

  def like_params
    params.require(:like).permit(:product_id, :user_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end
end
