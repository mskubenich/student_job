class Admin::ArticlesController < AdminController
  load_and_authorize_resource

  def index
    @articles = Article.paginate(page: params[:page] || 1, per_page: 20)
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

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end