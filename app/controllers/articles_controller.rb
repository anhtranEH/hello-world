class ArticlesController < ApplicationController
  before_action :load_articles, only: [:index]

  def index
  end

  def new
  end

  def show
  end

  private

  def load_articles
    @articles = Article.all
  end
end
