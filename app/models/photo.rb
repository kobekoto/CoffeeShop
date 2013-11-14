# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#  shop_id    :integer
#

class Photo < ActiveRecord::Base

	belongs_to :shop
	validates :shop_id, presence: true

	def self.create_photo(shop)
		a = HTTParty.get("https://api.foursquare.com/v2/venues/#{shop.cafe_id}/photos?&limit=15&client_id=#{ENV["F4_CLIENT"]}&client_secret=#{ENV["F4_CLIENT_SECRET"]}")
		
		path = a["response"]["photos"]["groups"][1]["items"][0]["sizes"]["items"][2]["url"] 
		# if a["response"]["photos"]["groups"][1]["items"].present?
		shop.photos << Photo.create(url: path)
		a["response"]["photos"]["groups"][1]["items"].each do |i|
			shop.photos << Photo.find_or_create_by_url(url: i["sizes"]["items"][2])
		end
		return true
	end
end
