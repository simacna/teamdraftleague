class SeasonsController < ApplicationController

	def index
		@teams = Team.all
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
		end
	end

end