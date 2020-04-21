require "application_system_test_case"

class SplashesTest < ApplicationSystemTestCase
  setup do
    @splash = splashes(:one)
  end

  test "visiting the index" do
    visit splashes_url
    assert_selector "h1", text: "Splashes"
  end

  test "creating a Splash" do
    visit splashes_url
    click_on "New Splash"

    fill_in "Name", with: @splash.name
    click_on "Create Splash"

    assert_text "Splash was successfully created"
    click_on "Back"
  end

  test "updating a Splash" do
    visit splashes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @splash.name
    click_on "Update Splash"

    assert_text "Splash was successfully updated"
    click_on "Back"
  end

  test "destroying a Splash" do
    visit splashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Splash was successfully destroyed"
  end
end
