class UserMailer < ActionMailer::Base
  default from: "no_reply@totalsem.com"

  def welcome_email(email, temp_password)
    @email = email
    @temp_password = temp_password
    logger.info "sending mail to (#{email})"
    mail(:to => email, :subject => "Welcome to My Awesome Site")
  end
end
