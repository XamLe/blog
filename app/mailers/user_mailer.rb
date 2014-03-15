class UserMailer < ActionMailer::Base
  default from: "maxblog0@gmail.com"




  def send_email (comment)
  	@comment = comment

  	mail to:"max.lewerenz@googlemail.com"
  end

end
