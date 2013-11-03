class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "You're now using the CoffeeShop App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  private

	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
	  end
end