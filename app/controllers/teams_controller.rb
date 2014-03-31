class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
		@members = Player.where(team_id: @team.id)
	end

end