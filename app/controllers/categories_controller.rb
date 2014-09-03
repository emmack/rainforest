class CategoriesController < ApplicationController


def index
  	@products = Product.all
    @categories = Category.all
end

def show
  	@category = Category.find(params[:id])
 end



 
end
