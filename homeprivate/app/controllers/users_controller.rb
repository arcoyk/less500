class UsersController < ApplicationController
  def index
  	@user = User.find_by_username params[:username]
  	@user != nil or not_found
  end

  def all
  	@all_users = User.all
  end
end
