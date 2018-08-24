require "application_system_test_case"

class SubscribeUsersTest < ApplicationSystemTestCase
  setup do
    @subscribe_user = subscribe_users(:one)
  end

  test "visiting the index" do
    visit subscribe_users_url
    assert_selector "h1", text: "Subscribe Users"
  end

  test "creating a Subscribe user" do
    visit subscribe_users_url
    click_on "New Subscribe User"

    fill_in "Email", with: @subscribe_user.email
    fill_in "Name", with: @subscribe_user.name
    fill_in "Prefix", with: @subscribe_user.prefix
    click_on "Create Subscribe user"

    assert_text "Subscribe user was successfully created"
    click_on "Back"
  end

  test "updating a Subscribe user" do
    visit subscribe_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @subscribe_user.email
    fill_in "Name", with: @subscribe_user.name
    fill_in "Prefix", with: @subscribe_user.prefix
    click_on "Update Subscribe user"

    assert_text "Subscribe user was successfully updated"
    click_on "Back"
  end

  test "destroying a Subscribe user" do
    visit subscribe_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subscribe user was successfully destroyed"
  end
end
