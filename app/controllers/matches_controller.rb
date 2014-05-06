class MatchesController < ApplicationController

	def show
		@match = Match.find(params["id"])

		if @match.winner != nil
			@winner = Team.find(@match.winner)
		end

		emails = []

		@match.team.players.uniq.each do |player|
			emails << player.email
		end

		@match.challenger.players.uniq.each do |player|
			emails << player.email
		end

		@email_link = "mailto:" + emails.join(",")

	end

	def edit

		@match = Match.find(params["id"])
		
		# Find current team members of involved teams
		@team_players = []

		@match.team.players.uniq.each do |player|
			player.seasons.each do |season|
				if season.active
					@team_players << player
					puts player.name
				end
			end
		end

		@challenger_players = []

		@match.challenger.players.uniq.each do |player|
			player.seasons.each do |season|
				if season.active
					@challenger_players << player
					puts player.name
				end
			end
		end

		if logged_in?
			player = Player.find_by(user_id: current_user.id)
			if current_user.admin
			elsif !player.teams.include?(@match.team) && !player.teams.include?(@match.challenger)
				flash[:error] = "Permissions mismatch."
				redirect_to "/matches/#{params["id"]}"
			end
		else
			flash[:error] = "Permissions mismatch."
			redirect_to "/matches/#{params["id"]}"
		end
	end

	# Sets match winner
	def update
		# Creates array of all match winners
		match_winners = [params["1"], params["2"], params["3"], params["4"], params["5"], params["6"], params["7"], params["8"], params["9"]]

		# Add winners if there were more than three people on the team
		if params.keys.include?("10")
			more_winners = [params["10"], params["11"], params["12"]]
			match_winners += more_winners
		end

		# Set match variables
		match = Match.find(params["id"])
		team = Team.find(match.team)
		challenger = Team.find(match.challenger)


		# Find players on each team

		team_players = []

		match.team.players.uniq.each do |player|
			player.seasons.each do |season|
				if season.active
					team_players << player
					puts player.name
				end
			end
		end

		challenger_players = []

		match.challenger.players.uniq.each do |player|
			player.seasons.each do |season|
				if season.active
					challenger_players << player
					puts player.name
				end
			end
		end

		# Iterate through each pairing, create and fill in individual player match object
		index = 0
		team_players.each do |player|
			challenger_players.each do |challenger|
				if match_winners[index]["id"] != ""
					result = player.individual_player_matches.new
					result.player = player
					result.opponent = challenger
					result.winner = match_winners[index]["id"]
					result.match = match
					result.save
				end
				index += 1
			end
		end

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