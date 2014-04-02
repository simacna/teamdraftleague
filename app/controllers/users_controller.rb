class UsersController < ApplicationController

	def show
		@user = User.find(params["id"])
	end

	def new
		@players = Player.all
	end

	def create

		name = params["user"]["name"]
		email = params["user"]["email"]
		password = params["user"]["password"]
		password_confirmation = params["user"]["password_confirmation"]
		player = params["user"]["player"]

		user = User.new(name: name, email: email, password: password, password_confirmation: password_confirmation)
		user.save

		if user.save
			player = Player.find(player)
			user.player = player
			flash[:success] = "User successfully created."
			redirect_to("/admin")
		else
			flash[:error] = "Something went wrong! #{response.message}"
			redirect_to("/users/new")
		end

		binding.pry
	end
end