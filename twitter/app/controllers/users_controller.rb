class UsersController < ApplicationController
  def index
    @all = User.all
  end

  def new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  def follow
    puts 3333
    relation = Relation.new
    relation.to_user_id = params[:to_user_id]
    user = User.find(params[:user_id])
    user.relation.push relation
    redirect_to '/users'
  end
end
