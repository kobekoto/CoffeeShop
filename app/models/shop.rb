# == Schema Information
#
# Table name: shops
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  latitude          :float
#  longitude         :float
#  phone             :string(255)
#  startAt           :integer
#  endAt             :integer
#  votes             :integer
#  twitter           :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  neighborhood_id   :integer
#  cafe_id           :string(255)
#  url               :string(255)
#  hours             :string(255)
#  foursquare_rating :float
#  address           :string(255)
#

class Shop < ActiveRecord::Base

	has_many :users_shops
	has_many :users, through: :users_shops
	belongs_to :neighborhood 
	has_many :photos
	acts_as_votable
	reverse_geocoded_by :latitude, :longitude
	before_save :reverse_geocode 

	def self.create_shop_info(neighborhood)
		client = Foursquare2::Client.new(:client_id => ENV["F4_CLIENT"], :client_secret => ENV["F4_CLIENT_SECRET"])
		shops = []
		s = client.search_venues(options = {:ll => "#{neighborhood.coordinates}", :limit => 10, :intent => 'browse', :radius => 1600, :categoryId => "4bf58dd8d48988d1e0931735"})
		s["groups"].first["items"].each do |x|
			a = Shop.create(cafe_id: x["id"], name: x["name"], latitude: x["location"]["lat"], longitude: x["location"]["lng"], phone: x["contact"]["formattedPhone"], twitter: x["contact"]["twitter"])	
			a.save
    	neighborhood.shops << a
		end
		return neighborhood.shops
	end

	def self.create_shop_details(shop)
		client = Foursquare2::Client.new(:client_id => ENV["F4_CLIENT"], :client_secret => ENV["F4_CLIENT_SECRET"])
		y = client.venue(shop.cafe_id)
		shop.url = y["url"]
		if y["hours"].present? 
			shop.hours = y["hours"]["timeframes"][0]["open"][0]["renderedTime"] 
		else 
			shop.hours = "N/A"
		end
		shop.foursquare_rating = y["rating"]
		if shop.address.blank?
			shop.address = y["location"]["address"] + "," + y["location"]["postalCode"] + "," + y["location"]["city"] 
		end
		if shop.phone.blank?
			shop.phone = "Too Hipster To Have A Landline"
		end
	end
end

