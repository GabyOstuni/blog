class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end
  def new
		@article = Article.new
		@article.title = "demo"
  end

  def create
		@article = Article.create(title: params[:article][:title])
		render json: @article
  end
end
