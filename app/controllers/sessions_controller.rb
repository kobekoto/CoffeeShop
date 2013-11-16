class SessionsController < ApplicationController

	def new 
		render layout: "signup"
	end

	def create
		user = User.find_by_email(params[:email].downcase)
		if user && user.authenticate(params[:password])
			log_in user
			redirect_back_or user
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end
end
