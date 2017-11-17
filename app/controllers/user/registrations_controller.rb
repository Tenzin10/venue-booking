#it handles registration from user which is not handled by devise
class User::RegistrationsController < Devise::RegistrationsController
before_filter :configure_permitted_parameters

	protected
		def configure_permitted_parameters
			devise_parameter_sanitizer.permit(:sign_up,keys: [:first_name, :last_name,:contact_number,:cid])
			devise_parameter_sanitizer.permit(:account_update,keys: [:first_name, :last_name,:contact_number,:cid])
		end
end  