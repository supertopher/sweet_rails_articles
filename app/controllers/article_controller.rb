class ArticleController < ApplicationController

  def show
    @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
    puts @article.url
  end
end

