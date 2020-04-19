require "application_system_test_case"

class AdmissionsTest < ApplicationSystemTestCase
  setup do
    @admission = admissions(:one)
  end

  test "visiting the index" do
    visit admissions_url
    assert_selector "h1", text: "Admissions"
  end

  test "creating a Admission" do
    visit admissions_url
    click_on "New Admission"

    fill_in "Address", with: @admission.address
    fill_in "Admission for", with: @admission.admission_for
    fill_in "Dob", with: @admission.dob
    fill_in "Email", with: @admission.email
    fill_in "Father name", with: @admission.father_name
    fill_in "Father phone", with: @admission.father_phone
    fill_in "Gender", with: @admission.gender
    fill_in "Mark sheet", with: @admission.mark_sheet
    fill_in "Mother name", with: @admission.mother_name
    fill_in "Mother phone", with: @admission.mother_phone
    fill_in "Name", with: @admission.name
    fill_in "Phone", with: @admission.phone
    click_on "Create Admission"

    assert_text "Admission was successfully created"
    click_on "Back"
  end

  test "updating a Admission" do
    visit admissions_url
    click_on "Edit", match: :first

    fill_in "Address", with: @admission.address
    fill_in "Admission for", with: @admission.admission_for
    fill_in "Dob", with: @admission.dob
    fill_in "Email", with: @admission.email
    fill_in "Father name", with: @admission.father_name
    fill_in "Father phone", with: @admission.father_phone
    fill_in "Gender", with: @admission.gender
    fill_in "Mark sheet", with: @admission.mark_sheet
    fill_in "Mother name", with: @admission.mother_name
    fill_in "Mother phone", with: @admission.mother_phone
    fill_in "Name", with: @admission.name
    fill_in "Phone", with: @admission.phone
    click_on "Update Admission"

    assert_text "Admission was successfully updated"
    click_on "Back"
  end

  test "destroying a Admission" do
    visit admissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admission was successfully destroyed"
  end
end
