class RegistrationsController < Devise::RegistrationsController
  
	def sign_up_params
		params.require(:client).permit(:name, :phone, :email, :password, :password_confirmation)
	end

	def after_sing_up_path_for(resource)
		'/subscriptions/new'
	end

end
