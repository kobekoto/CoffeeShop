class User < ActiveRecord::Base
	before_save { email.downcase! }
	before_create :create_remember_token

	has_secure_password
	has_attached_file :avatar, 
				:styles => { :medium => "300x300>", :thumb => "100x100>"},
				:default_url => "/images/:style/missing.png"
	validates :name, length: { in: 3..40 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
	validates :password, length: { minimum: 6 }

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end
end
	