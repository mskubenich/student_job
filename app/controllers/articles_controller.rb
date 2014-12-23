class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def proposal_params
    params.require(:proposal).permit(:title, :description)
  end
end
