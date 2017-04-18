class ArticlesController < ApplicationController
  before_action :load_articles, only: [:index]
  before_action :load_article, only: [:show]

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

  def load_article
    @article = Article.find(params[:id])
  end
end
