class ArticlesController < ApplicationController

  # This is show all articles 
  def index
    @articles=Article.all()
  end
# This route show single Article Detail 
  def show
    @article=Article.find(params[:id])
  end


# Create new Article
  def new
    @article = Article.new
  end

  def create
    article = Article.create(article_params)
    redirect_to articles_path
  end



  def edit
    @article = Article.find(params[:id])
  end
  
  def update 
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end





  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end


  private
  def article_params
    params.require(:article).permit(:name,:description)
  end

end
