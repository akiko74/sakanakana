require 'test_helper'

class DivesitesControllerTest < ActionController::TestCase
  setup do
    @divesite = divesites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divesites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create divesite" do
    assert_difference('Divesite.count') do
      post :create, :divesite => @divesite.attributes
    end

    assert_redirected_to divesite_path(assigns(:divesite))
  end

  test "should show divesite" do
    get :show, :id => @divesite.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @divesite.to_param
    assert_response :success
  end

  test "should update divesite" do
    put :update, :id => @divesite.to_param, :divesite => @divesite.attributes
    assert_redirected_to divesite_path(assigns(:divesite))
  end

  test "should destroy divesite" do
    assert_difference('Divesite.count', -1) do
      delete :destroy, :id => @divesite.to_param
    end

    assert_redirected_to divesites_path
  end
end
