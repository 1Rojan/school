require 'test_helper'

class AdmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admission = admissions(:one)
  end

  test "should get index" do
    get admissions_url
    assert_response :success
  end

  test "should get new" do
    get new_admission_url
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post admissions_url, params: { admission: { address: @admission.address, admission_for: @admission.admission_for, dob: @admission.dob, email: @admission.email, father_name: @admission.father_name, father_phone: @admission.father_phone, gender: @admission.gender, mark_sheet: @admission.mark_sheet, mother_name: @admission.mother_name, mother_phone: @admission.mother_phone, name: @admission.name, phone: @admission.phone } }
    end

    assert_redirected_to admission_url(Admission.last)
  end

  test "should show admission" do
    get admission_url(@admission)
    assert_response :success
  end

  test "should get edit" do
    get edit_admission_url(@admission)
    assert_response :success
  end

  test "should update admission" do
    patch admission_url(@admission), params: { admission: { address: @admission.address, admission_for: @admission.admission_for, dob: @admission.dob, email: @admission.email, father_name: @admission.father_name, father_phone: @admission.father_phone, gender: @admission.gender, mark_sheet: @admission.mark_sheet, mother_name: @admission.mother_name, mother_phone: @admission.mother_phone, name: @admission.name, phone: @admission.phone } }
    assert_redirected_to admission_url(@admission)
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete admission_url(@admission)
    end

    assert_redirected_to admissions_url
  end
end
