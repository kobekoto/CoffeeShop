# == Schema Information
#
# Table name: neighborhoods
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  coordinates         :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

class Neighborhood < ActiveRecord::Base

	validates :name, presence: true
	validates :coordinates, presence: true
	validates :user_id, presence: true
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "200x200>"}
	has_many :shops
	#TODO :Add index for both name and coordinate as they will be searched for shops. Or we could just do coordinates. Yeah just coordinates ;)
end
