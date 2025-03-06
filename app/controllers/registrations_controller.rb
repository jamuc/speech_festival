class RegistrationsController < ApplicationController
  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # POST /registrations or /registrations.json
  def create
    @registration = Registration.new(registration_params)

    if @registration.save
      RegistrationMailer.confirmation_email(@registration.name, @registration.email).deliver_later

      redirect_to root_path, notice: t("registrations.successful")
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def registration_params
      params.expect(registration: [ :name, :email, :drink_package, :lunch, :social_event ])
    end
end
