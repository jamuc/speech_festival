class RegistrationMailer < ApplicationMailer
    default from: "munich-speech-festival.com"

    def confirmation_email(user, email)
      @user = user
      mail(to: email, subject: "Speech Festival Registration Confirmation")
    end
end
