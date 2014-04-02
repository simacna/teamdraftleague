class SessionController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			if user.admin
				redirect_to("/admin")
			else
				redirect_to("/users/#{player.id}")
			end
		else
			flash[:error] = "Failure to launch."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		# session_reset
		redirect_to("/")
		# redirect_to(root_path)
	end
end