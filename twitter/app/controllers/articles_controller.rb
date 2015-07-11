class ArticlesController < ApplicationController
  def create
    article = Article.new(article_params)
    article.tags = []
    article.likes = []
    params[:article][:tags].split(',').each do |tag|
      article.tags.push tag.strip
    end
    article.user_id = current_user.id
    article.save
    redirect_to '/users'
  end

  def new
  end

  def index
    redirect_to '/users'
  end

  def show
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to '/users'
  end

  def like_toggle
    article = Article.find(params[:article_id])
    # article.likes.push(params[:user_id])
    article.save
    redirect_to '/users'
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :tags, :photo)
    end
end
