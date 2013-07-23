class ArticleController < ApplicationController

  def show
    # puts params[:id]
    @article = Article.find_by_slug(params[:title])
  end
  def redirect
    
    @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
    redirect category_article_path(@article)
  end
end

