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

	end

	def edit
		@user = User.find(params["id"])
		@players = Player.all
	end

	def select_user

	end

	def edit_user
		user = User.find(params["user"]["id"])
		redirect_to edit_user_path(user)
	end

	def update
		name = params["user"]["name"]
		email = params["user"]["email"]
		password = params["user"]["password"]
		password_confirmation = params["user"]["password_confirmation"]
		player = params["user"]["player"]
		id = params["id"]

		user = User.find(id)
		user.name = name
		user.email = email
		user.password = password
		user.password_confirmation = password_confirmation

		if user.save
			player = Player.find(player)
			user.player = player
			flash[:success] = "User updated successfully."
			redirect_to("/admin")
		else
			flash[:error] = "Something went wrong! #{response.message}"
			redirect_to("/users/select_user")
		end
	end
end