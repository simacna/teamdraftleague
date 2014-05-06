class SessionController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			player = Player.find_by(user_id: user.id)
			if current_user.admin
				redirect_to("/admin")
			else
				redirect_to("/schedule")
			end
		else
			flash[:error] = "Failure to launch."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to("/")
	end
end