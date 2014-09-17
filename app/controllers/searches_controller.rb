class SearchesController < ApplicationController
	def index
        @products = if params[:search]
            Product.where("LOWER(name) LIKE LOWER(?)", "%#{params[:search]}%").page(params[:page])
        else
            Product.order('products.created_at DESC').page(params[:page])
        end
       
    respond_to do |format|
        format.html
        format.js

    end
end
