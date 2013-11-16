class UserMailer < ActionMailer::Base
  
  default from: "coffeeshop@example.com"

  def welcome_to_coffeeshop(user)
    @user = user

    attachments.inline["coffeeshop_logo.jpg"] = File.read("app/assets/images/mailer/coffeeshop_logo.jpg")
    attachments.inline["social_icons.jpg"] = File.read("app/assets/images/mailer/social_icons.jpg")
    mail(to: "#{@user.name} <#{@user.email}>", subject: " Welcome To CoffeeShop #{@user.name}! ") 
  end
end
