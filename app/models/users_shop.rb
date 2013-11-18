# == Schema Information
#
# Table name: users_shops
#
#  id      :integer          not null, primary key
#  user_id :integer
#  shop_id :integer
#

class UsersShop < ActiveRecord::Base

belongs_to :user
belongs_to :shop 
# validates_uniqueness_of :shop_id

# validates_uniqueness_of :shop_id, :scope => :user_id
#TODO: VALIDATES UNIQUENESS OF Shop thru User
end
