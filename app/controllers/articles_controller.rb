class ArticlesController < ApplicationController
  def index
    #Se hace el llamado de todos los datos de articles
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
