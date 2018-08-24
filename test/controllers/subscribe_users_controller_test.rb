require 'test_helper'

class SubscribeUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscribe_user = subscribe_users(:one)
  end

  test "should get index" do
    get subscribe_users_url
    assert_response :success
  end

  test "should get new" do
    get new_subscribe_user_url
    assert_response :success
  end

  test "should create subscribe_user" do
    assert_difference('SubscribeUser.count') do
      post subscribe_users_url, params: { subscribe_user: { email: @subscribe_user.email, name: @subscribe_user.name, prefix: @subscribe_user.prefix } }
    end

    assert_redirected_to subscribe_user_url(SubscribeUser.last)
  end

  test "should show subscribe_user" do
    get subscribe_user_url(@subscribe_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_subscribe_user_url(@subscribe_user)
    assert_response :success
  end

  test "should update subscribe_user" do
    patch subscribe_user_url(@subscribe_user), params: { subscribe_user: { email: @subscribe_user.email, name: @subscribe_user.name, prefix: @subscribe_user.prefix } }
    assert_redirected_to subscribe_user_url(@subscribe_user)
  end

  test "should destroy subscribe_user" do
    assert_difference('SubscribeUser.count', -1) do
      delete subscribe_user_url(@subscribe_user)
    end

    assert_redirected_to subscribe_users_url
  end
end
