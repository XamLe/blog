class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def comment_email
  	
  	mail(to: "max.lewerenz@googlemail.com", subject: @comment.bodfy)
  end
end
