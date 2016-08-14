class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params
      .require(:cliente)
      .permit(:nombre, :telefono, :email, :password, :password_confirmation)
  end
end
