class SeasonController < ApplicationController

	def index
		@teams = Team.all
	end

end