# == Schema Information
#
# Table name: seasons
#
#  id             :integer          not null, primary key
#  number         :integer
#  challonge_name :string(255)
#

class Season < ActiveRecord::Base
	has_many :matches, :dependent => :destroy 
	has_many :teams, :dependent => :destroy

	# Adds scheduled matches to the database assuming the presence of teams and a season that has been started (season.start API request)
	def create_matches
		
		season = self.challonge_name

		response = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season}.json?include_matches=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })

		# Returns an array of all matches
		matches = response["tournament"]["matches"]

		# Iterates through the array and setting each matches' column values
		matches.each.select do |match|
			x = Match.create
			puts "Match created."
			x.team_challonge_number = match["match"]["player1_id"]
			puts "Team challonge number set."
			x.team_id = Team.find_by(challonge_team_number: match["match"]["player1_id"]).id
			puts "Team_id set."
			x.challenger_challonge_number = match["match"]["player2_id"]
			puts "Challenger challonge number set."
			x.challenger_id = Team.find_by(challonge_team_number: match["match"]["player2_id"]).id
			puts "Challenger_id set."
			x.season_id = self.id
			puts "Season_id set."
			x.challonge_match_number = match["match"]["id"]
			puts "Challonge match  number set."
			x.challonge_match_csv = match["match"]["scores_csv"]
			puts "Challonge match csv set."
			x.challonge_week = match["match"]["round"]
			puts "Challonge week set."
			if match["match"]["winner_id"] != nil
				x.winner = Team.find_by(challonge_team_number: match["match"]["winner_id"]).id
				"Match winner set."
			end
			x.save
		end
	end

end
