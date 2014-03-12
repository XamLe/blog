class UserMailer < ActionMailer::Base
  default from: "from@example.com"




  def send_email
  	@blabla = "Hi"

  	mail to:"max.lewerenz@googlemail.com"
  end

end
