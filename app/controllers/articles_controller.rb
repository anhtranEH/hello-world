class ArticlesController < ApplicationController
  before_action :load_articles, only: [:index]
  before_action :load_article, only: [:show]
  before_action :check_image, only: [:upload]
  before_action :get_last_image, only: [:index]

  def index
  end

  def new
  end

  def show
  end

  def upload
    a = Article.new
    a.title = params[:title]
    a.top_text = params[:top_text]
    a.bottom_text = params[:bottom_text]
    a.original = params[:image_path]
    a.save
    redirect_to root_path
  end

  private

  def load_articles
    @articles = Article.all
  end

  def load_article
    @article = Article.find(params[:id])
  end

  def check_image
    params.require(:image_path)
  end

  def get_last_image
    @last_image = Article.last
  end
end
