class Admin::ArticlesController < AdminController
  load_and_authorize_resource

  def index
    # TODO paginate
    @articles = Article.all
  end
end