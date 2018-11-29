class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :authenticate_user!
	before_action :configure_permited_paramaters, if: :devise_controller?

	protected

	def configure_permited_paramaters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
		devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
	end
end
