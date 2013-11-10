class Neighborhood < ActiveRecord::Base

	validates :name, presence: true
	validates :coordinates, presence: true
	validates :user_id, presence: true
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "200x200>"}

	#TODO :Add index for both name and coordinate as they will be searched for shops. Or we could just do coordinates. Yeah just coordinates ;)
end
