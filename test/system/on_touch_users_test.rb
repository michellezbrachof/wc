require "application_system_test_case"

class OnTouchUsersTest < ApplicationSystemTestCase
  setup do
    @on_touch_user = on_touch_users(:one)
  end

  test "visiting the index" do
    visit on_touch_users_url
    assert_selector "h1", text: "On Touch Users"
  end

  test "creating a On touch user" do
    visit on_touch_users_url
    click_on "New On Touch User"

    fill_in "Email", with: @on_touch_user.email
    fill_in "Name", with: @on_touch_user.name
    fill_in "Prefix", with: @on_touch_user.prefix
    click_on "Create On touch user"

    assert_text "On touch user was successfully created"
    click_on "Back"
  end

  test "updating a On touch user" do
    visit on_touch_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @on_touch_user.email
    fill_in "Name", with: @on_touch_user.name
    fill_in "Prefix", with: @on_touch_user.prefix
    click_on "Update On touch user"

    assert_text "On touch user was successfully updated"
    click_on "Back"
  end

  test "destroying a On touch user" do
    visit on_touch_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "On touch user was successfully destroyed"
  end
end
