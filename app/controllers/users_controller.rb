class UsersController < ApplicationController
 
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def edit
        @user = User.find(params[:id])
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else
            render :new
        end
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    private
  	def user_params
  	 	params.require(:user).permit(:email, :password, :password_confirmation, :name, :avatar)
  	end
end
