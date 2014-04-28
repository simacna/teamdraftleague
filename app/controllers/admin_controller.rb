class AdminController < ApplicationController

  before_action :require_admin

	def index
		@response = nil
	end

end