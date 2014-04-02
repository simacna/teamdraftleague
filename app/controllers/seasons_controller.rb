class SeasonsController < ApplicationController

	def index
		@seasons = Season.all
	end

	def show
		@season = Season.find(params["id"])
	end

	def new

	end

	# Takes form output from Season#New and makes a Challonge season/tournament.
	# If the season is successfully created, add the season to the database.
	def create
		# response = HTTParty.post("https://api.challonge.com/v1/tournaments.json", :query => {:tournament => {:name => "testing123", :tournament_type => "round robin", :url => "123testing123", :private => "true"}}, :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		number = params["season"]["number"]
		challonge_name = params["season"]["challonge_name"]
		challonge_url = params["challonge_url"]
		type = params["type"]


		response = HTTParty.post("https://api.challonge.com/v1/tournaments.json", :query => {:tournament => {:name => "#{challonge_name}", :tournament_type => "#{type}", :url => "#{challonge_url}", :private => "true"}}, :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		if response.code == 200
			season = Season.create(number: number, challonge_name: challonge_name)
			if season.save
				flash[:success] = "Season successfully created."
				redirect_to("/admin")
			else
				flash[:error] = "Something went wrong! #{response.message}"
				redirect_to("/seasons/new")
			end
		else
			flash[:error] = "Something went wrong! #{response.message}"
				redirect_to("/seasons/new")
		end
	end

	def start_season
	end

	def start
		season_id = params["season"]["id"]
		season = Season.find(season_id)

		response = HTTParty.post("https://api.challonge.com/v1/tournaments/#{season.challonge_name}/start.json", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		if response.code == 200
			# Set num_teams for season by finding the length of the participants array
			participants = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season.challonge_name}.json?include_participants=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
			teams = participants['tournament']['participants'].length
			season.update(num_teams: teams)

			# Set num_weeks for season by finding the last week of the tournament
			rounds = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season.challonge_name}.json?include_matches=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
			weeks = rounds["tournament"]["matches"][-1]["match"]["round"]
			season.update(num_weeks: weeks)
			season.create_matches
			flash[:success] = "Season successfully started."
			redirect_to("/admin")
		else
			flash[:error] = "Something went wrong! #{response.message}"
			redirect_to("/seasons/start_season")
		end

	end

	def schedule_matches
	end

	def create_matches
		season_id = params["season"]["id"]
		season = Season.find(season_id)
		season.create_matches
		redirect_to("/admin")
	end

end