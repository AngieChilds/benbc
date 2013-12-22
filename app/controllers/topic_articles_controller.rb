class TopicArticlesController < ApplicationController
  before_action :set_topic_article, only: [:show, :edit, :update, :destroy]

  # GET /topic_articles
  # GET /topic_articles.json
  def index
    @topic_articles = TopicArticle.all
  end

  # GET /topic_articles/1
  # GET /topic_articles/1.json
  def show
  end

  # GET /topic_articles/new
  def new
    @topic_article = TopicArticle.new
  end

  # GET /topic_articles/1/edit
  def edit
  end

  # POST /topic_articles
  # POST /topic_articles.json
  def create
    @topic_article = TopicArticle.new(topic_article_params)

    respond_to do |format|
      if @topic_article.save
        format.html { redirect_to @topic_article, notice: 'Topic article was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topic_article }
      else
        format.html { render action: 'new' }
        format.json { render json: @topic_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topic_articles/1
  # PATCH/PUT /topic_articles/1.json
  def update
    respond_to do |format|
      if @topic_article.update(topic_article_params)
        format.html { redirect_to @topic_article, notice: 'Topic article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topic_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topic_articles/1
  # DELETE /topic_articles/1.json
  def destroy
    @topic_article.destroy
    respond_to do |format|
      format.html { redirect_to topic_articles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic_article
      @topic_article = TopicArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_article_params
      params.require(:topic_article).permit(:title, :body)
    end
end
