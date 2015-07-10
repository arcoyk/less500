class UsersController < ApplicationController
	
	def index
		@all = User.all
	end

	def update
		@user.attributes = params[:user]
		@user.save
		redirect_to profile_path
	end

	def edit
		@user = current_user
	end

	def profile
		@user = current_user
	end

end
