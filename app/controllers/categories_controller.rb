class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_category, only: %i[ show ]

  # GET /categories/1 or /categories/1.json
  def show
    @categories = Category.all
    @articles = @category.article
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end
end
