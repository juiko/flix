class RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:client).permit(:name, :phone, :email, :password, :password_confirmation)
  end
end
