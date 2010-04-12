require 'test_helper'

class RidesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ride" do
    assert_difference('Ride.count') do
      post :create, :ride => { }
    end

    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should show ride" do
    get :show, :id => rides(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rides(:one).to_param
    assert_response :success
  end

  test "should update ride" do
    put :update, :id => rides(:one).to_param, :ride => { }
    assert_redirected_to ride_path(assigns(:ride))
  end

  test "should destroy ride" do
    assert_difference('Ride.count', -1) do
      delete :destroy, :id => rides(:one).to_param
    end

    assert_redirected_to rides_path
  end
end
