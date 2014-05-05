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


		# Create the user only if the provided email matches a player's email

		players = Player.pluck(:email)

		if players.include?(user.email)
			if user.save
				player = Player.find_by(email: user.email)
				user.player = player
				flash[:success] = "User successfully created. Welcome, #{user.name}!"
				redirect_to("/admin")
			else
				flash[:error] = "Something went wrong!"
				redirect_to("/users/new")
			end
		else
			flash[:error] = "Your email does not belong to any known player."
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