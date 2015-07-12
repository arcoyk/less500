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
      @following_articles.reverse!
      # @following_articles = Article.order(:created_at)
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
