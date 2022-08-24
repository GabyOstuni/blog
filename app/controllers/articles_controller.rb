class ArticlesController < ApplicationController

  def show
    @article = Article.find(params[:id])
    puts "\n\n\n showwwwww \n\n\n"
  end

  def edit
    @article = Article.find(params[:id])
    puts "\n\n\n #{@article.id} \n\n\n"
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title],comments: params[:article][:comments],content: params[:article][:content])
    
    redirect_to @article
  end

  def new
		@article = Article.new 
  end
  def create
		@article = Article.create(title: params[:article][:title],comments: params[:article][:comments],content: params[:article][:content])
		render json: @article
  end

  def destroy
    puts "\n\n\n PASEEEEEE   00000\n\n\n"  
    @article = Article.find(params[:id])
    puts "\n\n\n PASEEEEEE 11111\n\n\n"
    @article.destroy
    puts "\n\n\n PASEEEEEE 2222222\n\n\n"   
    redirect_to root_path
  end
end
