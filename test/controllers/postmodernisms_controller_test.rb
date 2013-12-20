require 'test_helper'

class PostmodernismsControllerTest < ActionController::TestCase
  setup do
    @postmodernism = postmodernisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postmodernisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postmodernism" do
    assert_difference('Postmodernism.count') do
      post :create, postmodernism: { author: @postmodernism.author, more: @postmodernism.more, publisher: @postmodernism.publisher, title: @postmodernism.title, year: @postmodernism.year }
    end

    assert_redirected_to postmodernism_path(assigns(:postmodernism))
  end

  test "should show postmodernism" do
    get :show, id: @postmodernism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postmodernism
    assert_response :success
  end

  test "should update postmodernism" do
    patch :update, id: @postmodernism, postmodernism: { author: @postmodernism.author, more: @postmodernism.more, publisher: @postmodernism.publisher, title: @postmodernism.title, year: @postmodernism.year }
    assert_redirected_to postmodernism_path(assigns(:postmodernism))
  end

  test "should destroy postmodernism" do
    assert_difference('Postmodernism.count', -1) do
      delete :destroy, id: @postmodernism
    end

    assert_redirected_to postmodernisms_path
  end
end
