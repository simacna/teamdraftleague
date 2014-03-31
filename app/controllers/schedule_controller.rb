class ScheduleController < ApplicationController

	def index
		@season = Season.find_by(number: 1)
	end

end