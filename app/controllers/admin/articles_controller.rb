class Admin::ArticlesController < AdminController
  load_and_authorize_resource

  def index
    @articles = Article.paginate(page: params[:page] || 1, per_page: 10)
    @total = Article.count
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article.to_json, status: :created
    else
      render json: { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @article.update_attributes(article_params)
      render json: @article.to_json, status: :ok
    else
      render json: { errors: @article.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    render nothing: true
  end

  def show
    render json: @article.to_json
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :id)
  end
end