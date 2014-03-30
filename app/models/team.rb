class Team < ActiveRecord::Base
	has_many :players
	belongs_to :season
	has_many :matches, through: :season

	# gets the challonge team id and adds it to the teams table
	def set_challonge_team_number
		season = self.season.challonge_name
		teams = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season}.json?include_participants=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
		teams['tournament']['participants'].each do |x|
			if x["participant"]["name"] == self.name
				self.challonge_team_number = x["participant"]["id"]
			end
		end

	end

end