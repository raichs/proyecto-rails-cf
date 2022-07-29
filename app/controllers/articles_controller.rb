class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_article, only: %i[ show ]

  # GET /articles/1 or /articles/1.json
  def show
    @categories = Category.all
  end

  def search
    term = params[:search].downcase || ''
    redirect_to root_path if term.blank?

    @categories = Category.all
    @articles = Article.where("lower(title) like ? or lower(body) like ?", "%#{term}%", "%#{term}%")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end
end
