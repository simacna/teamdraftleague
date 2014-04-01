class PlayersController < ApplicationController

	# before_action :require_admin, :only => [:destroy, :new, :create]

	def index
		@teams = Team.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		render :new
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		updated_player = Player.find(params["player"]["id"].to_i)

		updated_player.update(name: params["player"]["name"],
								email: params["player"]["email"],
								password: params["player"]["password"],
								password_confirmation: params["player"]["password_confirmation"],
								admin: params["player"]["admin"])

		if updated_player.save
			redirect_to("/players")
		else
			render :edit
		end
	end

end