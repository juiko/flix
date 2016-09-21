class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params
      .require(:client)
      .permit(:name, :phone, :email, :password, :password_confirmation)
  end
end
