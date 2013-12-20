require 'test_helper'

class ApologeticsControllerTest < ActionController::TestCase
  setup do
    @apologetic = apologetics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apologetics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apologetic" do
    assert_difference('Apologetic.count') do
      post :create, apologetic: { author: @apologetic.author, more: @apologetic.more, publisher: @apologetic.publisher, title: @apologetic.title, year: @apologetic.year }
    end

    assert_redirected_to apologetic_path(assigns(:apologetic))
  end

  test "should show apologetic" do
    get :show, id: @apologetic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apologetic
    assert_response :success
  end

  test "should update apologetic" do
    patch :update, id: @apologetic, apologetic: { author: @apologetic.author, more: @apologetic.more, publisher: @apologetic.publisher, title: @apologetic.title, year: @apologetic.year }
    assert_redirected_to apologetic_path(assigns(:apologetic))
  end

  test "should destroy apologetic" do
    assert_difference('Apologetic.count', -1) do
      delete :destroy, id: @apologetic
    end

    assert_redirected_to apologetics_path
  end
end
