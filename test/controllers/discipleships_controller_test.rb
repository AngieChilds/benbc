require 'test_helper'

class DiscipleshipsControllerTest < ActionController::TestCase
  setup do
    @discipleship = discipleships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discipleships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discipleship" do
    assert_difference('Discipleship.count') do
      post :create, discipleship: { author: @discipleship.author, more: @discipleship.more, publisher: @discipleship.publisher, title: @discipleship.title, year: @discipleship.year }
    end

    assert_redirected_to discipleship_path(assigns(:discipleship))
  end

  test "should show discipleship" do
    get :show, id: @discipleship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discipleship
    assert_response :success
  end

  test "should update discipleship" do
    patch :update, id: @discipleship, discipleship: { author: @discipleship.author, more: @discipleship.more, publisher: @discipleship.publisher, title: @discipleship.title, year: @discipleship.year }
    assert_redirected_to discipleship_path(assigns(:discipleship))
  end

  test "should destroy discipleship" do
    assert_difference('Discipleship.count', -1) do
      delete :destroy, id: @discipleship
    end

    assert_redirected_to discipleships_path
  end
end
