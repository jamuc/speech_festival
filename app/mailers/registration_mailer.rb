class RegistrationMailer < ApplicationMailer
    default from: "munich-speech-festival.com"

    def confirmation_email(registration)
      @name = registration.name
      @date = if registration.attending_22nd_march && registration.attending_23rd_march
                "22.03.2025 & 23.03.2025"
              elsif registration.attending_22nd_march
                "22.03.2025"
              else
                "23.03.2025"
              end

      mail(to: registration.email, subject: "Speech Festival Registration Confirmation")
    end
end
