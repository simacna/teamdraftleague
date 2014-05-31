class ScheduleController < ApplicationController

	def index
		@season = Season.where(active: true)
	end

end