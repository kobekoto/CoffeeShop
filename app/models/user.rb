class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	has_secure_password

	validates :name, length: { in: 3..40 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
	validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
	validates :password, length: { minimum: 6 }
end
	