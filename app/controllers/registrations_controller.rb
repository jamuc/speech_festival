class RegistrationsController < ApplicationController
  # GET /registrations/new
  def new
    @registration = Registration.new
  end

  # POST /registrations or /registrations.json
  def create
    # Convert checkbox values into boolean
    attendance_params = {
      attending_22nd_march: params[:attendance]&.include?("22nd March") || false,
      attending_23rd_march: params[:attendance]&.include?("23rd March") || false
    }

    @registration = Registration.new(registration_params.merge(attendance_params))

    if @registration.save
      RegistrationMailer.confirmation_email(@registration).deliver_later

      redirect_to root_path, notice: t("registrations.successful")
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def registration_params
      params.require(:registration).permit(:name, :email, :drink_package_22, :drink_package_23, :attending_22nd_march, :attending_23rd_march, :lunch, :social_event)
    end
end
