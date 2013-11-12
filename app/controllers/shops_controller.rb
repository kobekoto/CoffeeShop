class ShopsController < ApplicationController
  before_action :logged_in_user

  def show
		@shop = Shop.find(params[:id])
		if @shop.present?
			Shop.create_shop_details(@shop)
		end  	
  end

  def create
  	@neighborhood = Neighborhood.create(user_params)
  end

  def user_params
  	params.require(:shop).permit(:name, :latitude, :longitude, :phone, :twitter, :url, :hours, :foursquare_rating)
  end
end
