class MatchesController < ApplicationController

	def show
		@match = Match.find(params["id"])

		if @match.winner != nil
			@winner = Team.find(@match.winner)
		end
	end

	def edit
		@match = Match.find(params["id"])		
	end

	def update
		match_id = params["id"]
		winner_id = params["winner"]["id"]
		match_csv = params["match"]["challonge_match_csv"]


		match = Match.find(match_id)
		winner = Team.find(winner_id)

		match.update(winner: winner_id)

		if match.save
			response = HTTParty.put("https://api.challonge.com/v1/tournaments/#{match.season.challonge_name}/matches/#{match.challonge_match_number}.json", :query => {:match => {:winner_id => "#{winner.challonge_team_number}", :scores_csv => "#{match_csv}"}}, :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
			if response.code == 200
				flash[:success] = "Match successfully reported."
				redirect_to("/seasons/#{match.season.id}")
			else
				flash[:error] = "Something went wrong!"
				redirect_to("/matches/#{match.id}/edit")
			end
		end
	end
end