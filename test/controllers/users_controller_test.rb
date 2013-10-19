require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { about: @user.about, email: @user.email, facebook_id: @user.facebook_id, facebook_token: @user.facebook_token, password: @user.password, user_name: @user.user_name }
    end

    assert_response 201
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { about: @user.about, email: @user.email, facebook_id: @user.facebook_id, facebook_token: @user.facebook_token, password: @user.password, user_name: @user.user_name }
    assert_response 204
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_response 204
  end
end
