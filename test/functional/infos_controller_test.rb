require 'test_helper'

class InfosControllerTest < ActionController::TestCase
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info" do
    assert_difference('Info.count') do
      post :create, :info => @info.attributes
    end

    assert_redirected_to info_path(assigns(:info))
  end

  test "should show info" do
    get :show, :id => @info.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @info.to_param
    assert_response :success
  end

  test "should update info" do
    put :update, :id => @info.to_param, :info => @info.attributes
    assert_redirected_to info_path(assigns(:info))
  end

  test "should destroy info" do
    assert_difference('Info.count', -1) do
      delete :destroy, :id => @info.to_param
    end

    assert_redirected_to infos_path
  end
end
