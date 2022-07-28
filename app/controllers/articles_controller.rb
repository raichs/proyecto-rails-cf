class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_article, only: %i[ show ]

  # GET /articles/1 or /articles/1.json
  def show
    @categories = Category.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end
end
