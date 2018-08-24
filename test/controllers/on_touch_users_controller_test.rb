require 'test_helper'

class OnTouchUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @on_touch_user = on_touch_users(:one)
  end

  test "should get index" do
    get on_touch_users_url
    assert_response :success
  end

  test "should get new" do
    get new_on_touch_user_url
    assert_response :success
  end

  test "should create on_touch_user" do
    assert_difference('OnTouchUser.count') do
      post on_touch_users_url, params: { on_touch_user: { email: @on_touch_user.email, name: @on_touch_user.name, prefix: @on_touch_user.prefix } }
    end

    assert_redirected_to on_touch_user_url(OnTouchUser.last)
  end

  test "should show on_touch_user" do
    get on_touch_user_url(@on_touch_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_on_touch_user_url(@on_touch_user)
    assert_response :success
  end

  test "should update on_touch_user" do
    patch on_touch_user_url(@on_touch_user), params: { on_touch_user: { email: @on_touch_user.email, name: @on_touch_user.name, prefix: @on_touch_user.prefix } }
    assert_redirected_to on_touch_user_url(@on_touch_user)
  end

  test "should destroy on_touch_user" do
    assert_difference('OnTouchUser.count', -1) do
      delete on_touch_user_url(@on_touch_user)
    end

    assert_redirected_to on_touch_users_url
  end
end
