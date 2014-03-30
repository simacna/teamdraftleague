class Season < ActiveRecord::Base
	has_many :matches
	has_many :teams

	def create_matches

		response = HTTParty.get("https://api.challonge.com/v1/tournaments/iy7fpc0t.json?include_matches=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		matches = response["tournament"]["matches"]

		matches.each.select do |match|
			x = Match.create
			x.team_id = match["match"]["player1_id"]
			x.challenger_id = match["match"]["player2_id"]
			x.winner = match["match"]["winner_id"]
			x.season_id = self.id
			x.challonge_match_number = match["match"]["id"]
			x.challonge_match_csv = match["match"]["scores_csv"]
			x.challonge_week = match["match"]["round"]
			x.save
		end
	end

end