require 'test_helper'

class PickupsControllerTest < ActionController::TestCase
  setup do
    @pickup = pickups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pickups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pickup" do
    assert_difference('Pickup.count') do
      post :create, :pickup => @pickup.attributes
    end

    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should show pickup" do
    get :show, :id => @pickup.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pickup.to_param
    assert_response :success
  end

  test "should update pickup" do
    put :update, :id => @pickup.to_param, :pickup => @pickup.attributes
    assert_redirected_to pickup_path(assigns(:pickup))
  end

  test "should destroy pickup" do
    assert_difference('Pickup.count', -1) do
      delete :destroy, :id => @pickup.to_param
    end

    assert_redirected_to pickups_path
  end
end
