class ProductsController < ApplicationController


  def index
  	@products = Product.all
    @categories = Category.all
 

  end

  def show
  	@product = Product.find(params[:id])
    if current_user
      @review = @product.reviews.build
      @rating = @product.ratings.build
    end
  end

  def new
  	@product = Product.new
    @categories = Category.all.order(by_name: :desc)

  end

  def edit
  	@product = Product.find(params[:id])
    @categories = Category.all.order(by_name: :desc)
  end

  def create 
  	@product = Product.new(product_params)
  	@categories = Category.all.order(by_name: :desc)

    if @product.save
      redirect_to product_path(@product)
  	else
  		render :new
  	end
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update_attributes(product_params)
  		redirect_to product_path(@product)
  	else
  		render :edit
  	end
  end

  def destroy
  	@product = Product.find(params[:id])
  	@product.destroy
  	redirect_to products_path
  end

  private
  
  def product_params
  	params.require(:product).permit(:name, :description, :price_in_cents, :image, :category_id)
  end

  
end
