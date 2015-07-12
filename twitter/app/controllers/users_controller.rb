class UsersController < ApplicationController
  helper :users

  def index
    @all = User.all
    @following_articles = Array.new
    if current_user
      current_user.relation.each do |relation|
        following = User.find(relation.to_user_id)
        following.article.each do |article|
          @following_articles.push article
        end
      end
      current_user.article.each do |article|
        @following_articles.push article
      end
      @following_articles.sort_by!(&:created_at).reverse!
    end
  end

  def all
    @all = User.all
  end

  def new
  end

  def create
  end

  def show
    @user = User.where(:name => params[:id]).first
  end

  def update
    @user = User.find(params[:id])
    @user.name = params[:user][:name]
    @user.save
    redirect_to user_path(@user.name)
  end

  def destroy
  end

  def follow_toggle
    relation = Relation.where(:user_id => params[:user_id], :to_user_id => params[:to_user_id]).first
    if !relation
      relation = Relation.new
      relation.user_id = params[:user_id]
      relation.to_user_id = params[:to_user_id]
      relation.save()
      user = User.find(params[:user_id])
      user.relation.push relation
    else
      relation.destroy
    end
    redirect_to params[:origin]
  end

  def following
    @user = User.where(:name => params[:id]).first
  end

  def follower
    @user = User.where(:name => params[:id]).first
  end
  
end
