class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	def current_user
		@current_user ||= Player.find_by(id: session[:player_id])
	end

	def logged_in?
		current_user.present?
	end

	def require_admin
		if logged_in? && current_user.admin
			return true
		else
			flash[:error] = "Permissions mismatch."
			redirect_to(root_path)
		end
	end

	helper_method(:current_user, :logged_in?, :require_admin)

end