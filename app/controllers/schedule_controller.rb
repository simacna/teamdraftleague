class ScheduleController < ApplicationController

	def index
		@season = Season.where(number: 2)
	end

end