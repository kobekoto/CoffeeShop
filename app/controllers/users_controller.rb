class UsersController < ApplicationController
  before_action :logged_in_user,   only: [:index,:edit, :update]
  before_action :correct_user,     only: [:edit, :update] 
  respond_to :json

  def index
    @users = User.paginate(page: params[:page])
    gon.users = @users
    gon.rabl
  end

  def show
  	@user = User.find(params[:id])
    @shops = @user.find_liked_items
  end

  def new
  	@user = User.new
    render layout: "signup"
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		log_in @user
  		flash[:success] = "You're now using the CoffeeShop App!"
  		redirect_to @user
      UserMailer.welcome_to_coffeeshop(@user).deliver
  	else
  		render action: "new", layout: "signup"
  	end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else 
      render 'edit'
    end
  end

  private

	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar, :address, :latitude, :longitude)
	  end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
