require 'test_helper'

class EvangelismsControllerTest < ActionController::TestCase
  setup do
    @evangelism = evangelisms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:evangelisms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evangelism" do
    assert_difference('Evangelism.count') do
      post :create, evangelism: { author: @evangelism.author, more: @evangelism.more, publisher: @evangelism.publisher, title: @evangelism.title, year: @evangelism.year }
    end

    assert_redirected_to evangelism_path(assigns(:evangelism))
  end

  test "should show evangelism" do
    get :show, id: @evangelism
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evangelism
    assert_response :success
  end

  test "should update evangelism" do
    patch :update, id: @evangelism, evangelism: { author: @evangelism.author, more: @evangelism.more, publisher: @evangelism.publisher, title: @evangelism.title, year: @evangelism.year }
    assert_redirected_to evangelism_path(assigns(:evangelism))
  end

  test "should destroy evangelism" do
    assert_difference('Evangelism.count', -1) do
      delete :destroy, id: @evangelism
    end

    assert_redirected_to evangelisms_path
  end
end
