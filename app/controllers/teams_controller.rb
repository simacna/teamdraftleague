class TeamsController < ApplicationController

	def index
		@teams = Team.all
	end

	def show
		@team = Team.find(params[:id])
		@members = Player.where(team_id: @team.id)
	end

	def new
		@seasons = Season.all
	end

	def create
		name = params["team"]["name"]
		season_id = params["team"]["season"]
		challonge_season = Season.find(season_id)
		challonge_season_name = challonge_season.challonge_name
		
		response = HTTParty.post("https://api.challonge.com/v1/tournaments/#{challonge_season_name}/participants.json", :query => {:participant => {:name => "#{name}"}}, :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		challonge_team_number = response["participant"]["id"]


		if response.code == 200
			team = Team.create(name: name, challonge_team_number: challonge_team_number)
			if team.save
				challonge_season.teams << team
				flash[:success] = "Team successfully created."
				redirect_to("/admin")
			else
				flash[:error] = "Something went wrong! #{response.message}"
				redirect_to("/teams/new")
			end
		else
			flash[:error] = "Something went wrong! #{response.message}"
				redirect_to("/teams/new")
		end

	end
end