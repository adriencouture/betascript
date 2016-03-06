class UserMailer < ApplicationMailer

  default from: 'team@betascript.com'

  def welcome_email(user)
    @user = user
    @url = 'http://betascript.co/login'
    mail(to: @user.email, subject: 'Welcome to BetaScript!')
  end

  def reset_password_email(user)
    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.user_mailer.reset_password_email.subject
    #

    def reset_password_email
      @greeting = "Hi"

      mail to: "to@example.org"
    end

    def reset_password_email(user)
    @user = User.find user.id
    @url  = edit_password_reset_url(@user.reset_password_token)
    mail(:to => user.email,
         :subject => "Your password has been reset")
    end
  end
end
