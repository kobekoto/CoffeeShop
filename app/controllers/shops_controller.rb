class ShopsController < ApplicationController
  before_action :logged_in_user

  def show
		@shop = Shop.find(params[:id])
		if @shop.present?
			Shop.create_shop_details(@shop)
		end  	
  end

  def user_params
  	params.require(:shop).permit(:name, :latitude, :longitude, :phone, :twitter, :url, :hours, :foursquare_rating, :votes)
  end

  def voting
  	@shop = Shop.find(params[:id])
  	@shop.liked_by current_user
  	current_user.shops << @shop
  	flash[:success] = "You Liked this #{@shop.name}"
  	redirect_to root_path
  end

end

	


