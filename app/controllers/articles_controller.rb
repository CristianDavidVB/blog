class ArticlesController < ApplicationController
  def index
    #Se hace el llamado de todos los datos de articles
    @articles = Article.all
  end

  # Mostrar
  def show
    @article = Article.find(params[:id])
  end


  # Nuevo
  def new 
    @article = Article.new
  end 

  # Crear
  def create
    @article = Article.new (title:"...", body: "...")

    if @article.save 
      redirect_to @article

    else
      render :new, status: :unprocessable_entity
    end
  end # Fin del metodo create

end # Fin del programa


