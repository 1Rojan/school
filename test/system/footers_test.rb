require "application_system_test_case"

class FootersTest < ApplicationSystemTestCase
  setup do
    @footer = footers(:one)
  end

  test "visiting the index" do
    visit footers_url
    assert_selector "h1", text: "Footers"
  end

  test "creating a Footer" do
    visit footers_url
    click_on "New Footer"

    fill_in "Description", with: @footer.description
    click_on "Create Footer"

    assert_text "Footer was successfully created"
    click_on "Back"
  end

  test "updating a Footer" do
    visit footers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @footer.description
    click_on "Update Footer"

    assert_text "Footer was successfully updated"
    click_on "Back"
  end

  test "destroying a Footer" do
    visit footers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Footer was successfully destroyed"
  end
end
