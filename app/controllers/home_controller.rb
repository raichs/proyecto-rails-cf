class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
    @articles = Article.all
  end
end
  