# collection @users

# attributes :name, :email, :address, :lat_lon, :created_at, :updated_at 

# node do |user|
# 	{
# 		:created_at_formatted => user.created_at.strftime("%m/%d/%Y"),		
# 		:updated_at_formatted => time_ago_in_words(user.updated_at)
# 	}
# end

# child :shops do 
#  attributes :id, :name
# end
object false

node do 
	{
		:environment => Rails.env
	}
end
