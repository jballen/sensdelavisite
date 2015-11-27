class ArticlesController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :new, :create]

 def index
    @articles = Article.order("created_at DESC")
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: "The article has been successfully created."
    else
      render action: "new"
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to articles_path, notice: "The article has been successfully updated."
    else
      render action: "edit"
    end
  end

private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def admin_user
     @user = User.find(params[:id])
     redirect_to(root_url) unless admin_user?(@user)
  end
end
