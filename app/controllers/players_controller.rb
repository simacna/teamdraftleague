class PlayersController < ApplicationController

	# before_action :require_admin, :only => [:destroy, :new, :create]

	def index
		@teams = Team.all
	end

	def show
		@player = Player.find(params[:id])
	end

	def new
		@teams = Team.all
		# render :new
	end

	def create

		name = params["player"]["name"]
		team_id = params["player"]["team"]
		team = Team.find(team_id)

		player = Player.new(name: name)

		if player.save
			team.players << player
			flash[:success] = "Player successfully created."
			redirect_to("/admin")
		else
			flash[:error] = "Something went wrong! #{response.message}"
			redirect_to("/players/new")
		end

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