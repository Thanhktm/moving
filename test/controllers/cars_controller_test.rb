require 'test_helper'

class CarsControllerTest < ActionController::TestCase
  setup do
    @car = cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { avatar: @car.avatar, latitude: @car.latitude, license: @car.license, longitude: @car.longitude, name: @car.name, seats: @car.seats }
    end

    assert_response 201
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should update car" do
    put :update, id: @car, car: { avatar: @car.avatar, latitude: @car.latitude, license: @car.license, longitude: @car.longitude, name: @car.name, seats: @car.seats }
    assert_response 204
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_response 204
  end
end
