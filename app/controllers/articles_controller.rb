class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
    @article = Article.new
  end
  
  def create
    Article.create(user_name: article_params[:user_name], title: article_params[:title], text: article_params[:text])
    redirect_to action: :index
  end
  
  def show
  end
  
  def destroy
  end
  
  def edit
  end
  
  def update
  end
  
  private
  def article_params
    params.permit(:user_name, :title, :text)
  end
end
