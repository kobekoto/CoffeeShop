class ShopsController < ApplicationController
  before_action :logged_in_user

  def show
		@shop = Shop.find(params[:id])
		if @shop.present?
			Shop.create_shop_details(@shop) 
		end
    if @shop.photos.blank?
      Photo.create_photo(@shop)  	
    end
    @photos = @shop.photos
  end

  def user_params
  	params.require(:shop).permit(:name, :latitude, :longitude, :phone, :twitter, :url, :hours, :foursquare_rating, :votes)
  end

  def voting	
    @shop = Shop.find(params[:id])
  	flash[:success] = "You Liked this #{@shop.name}"
    current_user.likes @shop
    current_user.shops << @shop
  	redirect_to root_path
  end

end


