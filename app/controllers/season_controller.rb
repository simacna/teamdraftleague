class SeasonController < ApplicationController

	def get_challonge_season_name(season)
	end

	def add_challonge_season_name(season, name)
		x = Season.find(season.id)
		x.update(challonge_name: name)
	end

end