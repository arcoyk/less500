class UsersController < ApplicationController
	
	def index
		@all = User.all
	end

	def update
		@user = User.find(params[:username])
		@user.name = params[:user][:name]
		@user.save
		redirect_to user_path
	end

	def edit
		@user = current_user
		@image = Image.new
	end

	def profile
		@user = current_user
	end

end
