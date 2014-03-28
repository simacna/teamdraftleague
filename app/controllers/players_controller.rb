class PlayersController < ApplicationController

	def index
		@teams = Team.all
	end
end