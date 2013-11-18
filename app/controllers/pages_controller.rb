class PagesController < ApplicationController
  def home
  	@user = current_user if logged_in?
  	@shops = current_user.shops if logged_in?
  end

  def about
  	render layout: "signup" unless logged_in?
  end

  def contact
  	render layout: "signup" unless logged_in?
  end
end
