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
	has_many :players, :dependent => :destroy
	belongs_to :season
	has_many :matches, :through => :season

	validates(:name,     { :presence     => true })

	# gets the challonge team id and adds it to the teams table
	def set_challonge_team_number

		season = self.season.challonge_name

		teams = HTTParty.get("https://api.challonge.com/v1/tournaments/#{season}.json?include_participants=1", :basic_auth => {:username => "rdmccoy", :password => ENV["CHALLONGE_PASSWORD"] })
		
		teamz = teams['tournament']['participants']

		teamz.each do |team|
			if team["participant"]["name"] == self.name
				self.challonge_team_number = team["participant"]["id"]
				self.save
			end
		end

	end

end
