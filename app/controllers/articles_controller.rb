class ArticlesController < ApplicationController
  def index         # GET /restaurants
    @articles = Article.all
  end

  def show          # GET /restaurants/:id
    @article = Article.find(params[:id])
  end

  def new           # GET /restaurants/new
    @article = Article.new
  end

  def create        # POST /restaurants
    @article = Article.new(article_params)
    @article.save
  end

  def edit          # GET /restaurants/:id/edit
    @article = Article.find(params[:id])
  end

  def update        # PATCH /restaurants/:id
    @article = Article.find(params[:id])
    @article.update(params(article_params))
  end

  def destroy       # DELETE /restaurants/:id
    @article = Article.find(params[:id])
    @article.destroy
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
