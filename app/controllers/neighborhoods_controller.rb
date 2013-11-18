class NeighborhoodsController < ApplicationController
  before_action :logged_in_user

  def index
  	@neighborhoods = Neighborhood.all
  end

  def show
  	@neighborhood = Neighborhood.find(params[:id])
  	if @neighborhood.shops.blank?
  		Shop.create_shop_info(@neighborhood)
  	end
  	@shops = @neighborhood.shops.paginate(page: params[:page], per_page: 10)
  end

  def create
  	@neighborhood = Neighborhood.create(user_params)
  end

  def user_params
  	params.require(:neighborhood).permit(:avatar)
  end
end
