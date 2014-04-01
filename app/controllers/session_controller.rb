class SessionController < ApplicationController

	def new
	end

	def create
		player = Player.find_by(email: params[:email])
		if player && player.authenticate(params[:password])
			session[:player_id] = player.id
			if player.admin
				redirect_to("/admin")
			else
				redirect_to("/players/#{player.id}")
			end
		else
			render :new
		end
	end

	def destroy
		session[:player_id] = nil
		# session_reset
		redirect_to("/")
		# redirect_to(root_path)
	end
end