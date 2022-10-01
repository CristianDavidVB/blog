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
    @article = Article.new(article_params)

    if @article.save 
      redirect_to @article

    else
      render :new, status: :unprocessable_entity
    end
  end # Fin del metodo create

  def edit #Modificar 
    @article = Article.find(params[:id])
  end

  def update #Agregar
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit, status: :unprocessable_entity
    end

    def destroy #Eliminar
      @article = Article.find(params[:id])
      @article.destroy

      redirect_to root_path, status: :see_other
  end

  private # Privado
    def article_params
      params.require(:article).permit(:title, :body)
    end
end # Fin del programa


