# == Schema Information
#
# Table name: teams
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  season_id             :integer
#  challonge_team_number :integer
#

class Team < ActiveRecord::Base
	
	has_many :player_team_histories
  has_many :players, through: :player_team_histories
  has_many :seasons, through: :player_team_histories
	has_many :matches
	has_many :matches, class_name: "Match", foreign_key: "challenger_id"

	validates(:name,     { :presence     => true })

	# gets the challonge team id and adds it to the teams table
	def set_challonge_team_number(season_name)

		season = Season.find_by(name: season_name)
		season_challonge_name = season.challonge_name

		teams = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season_challonge_name}.json?include_participants=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
		
		teamz = teams['tournament']['participants']

		teamz.each do |team|
			if team["participant"]["name"] == self.name
				self.challonge_team_number = team["participant"]["id"]
				self.save
			end
		end

	end

end
