class UserMailer < ActionMailer::Base
  default from: "maxblog0@gmail.com"




  def send_email
  	@blabla = "Hi"

  	mail to:"max.lewerenz@googlemail.com"
  end

end
