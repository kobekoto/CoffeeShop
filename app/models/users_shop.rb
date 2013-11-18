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

#TODO: VALIDATES UNIQUENESS OF Shop thru User
end
