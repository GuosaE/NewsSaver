class ProfileArticlesController < ApplicationController
  include CurrentProfile
  before_action :set_profile, only: [:create]
  before_action :set_profile_article, only: [:show, :edit, :update, :destroy]

  def index
    @profile_articles = ProfileArticle.all
  end

  def show
  end

  def new
    @profile_article = ProfileArticle.new
  end

  def edit
  end

  def create
    article = Article.find(params[:article_id])
    @profile_article = @profile.profile_articles.build(article: article)
    if @profile_article.save
        redirect_to @profile_article, notice: 'Profile article was successfully added.' 
    else
        render :new 
    end
  end


  def update
      if @profile_article.update(profile_article_params)
        redirect_to @profile_article, notice: 'Profile article was successfully updated.' 
      else
        render :edit 
      end
  end


  def destroy
    @profile_article.destroy
    redirect_to profile_articles_url, notice: 'Profile article was successfully removed.' 
  end

  private
    def set_profile_article
      @profile_article = ProfileArticle.find(params[:id])
    end

    def profile_article_params
      params.require(:profile_article).permit(:article_id, :profile_id)
    end
end
