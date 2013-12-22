require 'test_helper'

class TopicArticlesControllerTest < ActionController::TestCase
  setup do
    @topic_article = topic_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic_article" do
    assert_difference('TopicArticle.count') do
      post :create, topic_article: { body: @topic_article.body, title: @topic_article.title }
    end

    assert_redirected_to topic_article_path(assigns(:topic_article))
  end

  test "should show topic_article" do
    get :show, id: @topic_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic_article
    assert_response :success
  end

  test "should update topic_article" do
    patch :update, id: @topic_article, topic_article: { body: @topic_article.body, title: @topic_article.title }
    assert_redirected_to topic_article_path(assigns(:topic_article))
  end

  test "should destroy topic_article" do
    assert_difference('TopicArticle.count', -1) do
      delete :destroy, id: @topic_article
    end

    assert_redirected_to topic_articles_path
  end
end
