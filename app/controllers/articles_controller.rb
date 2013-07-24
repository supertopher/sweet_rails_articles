class ArticlesController < ApplicationController

  def show
    @article =  Article.find_by_slug(params[:id])
  end

  def redirect_to_article

    @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
    p @article
    redirect_to category_article_path(@article.category, @article)
  end
end

