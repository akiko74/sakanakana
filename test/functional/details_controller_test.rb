require 'test_helper'

class DetailsControllerTest < ActionController::TestCase
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detail" do
    assert_difference('Detail.count') do
      post :create, :detail => @detail.attributes
    end

    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should show detail" do
    get :show, :id => @detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @detail.to_param
    assert_response :success
  end

  test "should update detail" do
    put :update, :id => @detail.to_param, :detail => @detail.attributes
    assert_redirected_to detail_path(assigns(:detail))
  end

  test "should destroy detail" do
    assert_difference('Detail.count', -1) do
      delete :destroy, :id => @detail.to_param
    end

    assert_redirected_to details_path
  end
end
