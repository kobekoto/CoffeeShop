class NeighborhoodsController < ApplicationController
  def index
  	@neighborhoods = Neighborhood.all
  end

  def create
  	@neighborhood = Neighborhood.create( user_params )
  end

  def user_params
  	params.require(:neighborhood).permit(:avatar)
  end
end
