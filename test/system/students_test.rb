require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Address complex", with: @student.address_complex
    fill_in "Address cp", with: @student.address_cp
    fill_in "Address number", with: @student.address_number
    fill_in "Address phone", with: @student.address_phone
    fill_in "Address street", with: @student.address_street
    fill_in "Birth city", with: @student.birth_city
    fill_in "Birth date", with: @student.birth_date
    fill_in "Birth state", with: @student.birth_state
    fill_in "Email", with: @student.email
    fill_in "Facebook", with: @student.facebook
    check "Father live" if @student.father_live
    fill_in "Father name", with: @student.father_name
    fill_in "Father occupation", with: @student.father_occupation
    fill_in "Father phone", with: @student.father_phone
    fill_in "Medical condition", with: @student.medical_condition
    check "Mother live" if @student.mother_live
    fill_in "Mother name", with: @student.mother_name
    fill_in "Mother occupation", with: @student.mother_occupation
    fill_in "Mother phone", with: @student.mother_phone
    fill_in "Name", with: @student.name
    fill_in "Personal phone", with: @student.personal_phone
    fill_in "Previous school", with: @student.previous_school
    fill_in "Previous school type", with: @student.previous_school_type
    fill_in "Scolarship", with: @student.scolarship
    fill_in "Security institution", with: @student.security_institution
    fill_in "Tutor name", with: @student.tutor_name
    fill_in "Tutor parenthood", with: @student.tutor_parenthood
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Address complex", with: @student.address_complex
    fill_in "Address cp", with: @student.address_cp
    fill_in "Address number", with: @student.address_number
    fill_in "Address phone", with: @student.address_phone
    fill_in "Address street", with: @student.address_street
    fill_in "Birth city", with: @student.birth_city
    fill_in "Birth date", with: @student.birth_date
    fill_in "Birth state", with: @student.birth_state
    fill_in "Email", with: @student.email
    fill_in "Facebook", with: @student.facebook
    check "Father live" if @student.father_live
    fill_in "Father name", with: @student.father_name
    fill_in "Father occupation", with: @student.father_occupation
    fill_in "Father phone", with: @student.father_phone
    fill_in "Medical condition", with: @student.medical_condition
    check "Mother live" if @student.mother_live
    fill_in "Mother name", with: @student.mother_name
    fill_in "Mother occupation", with: @student.mother_occupation
    fill_in "Mother phone", with: @student.mother_phone
    fill_in "Name", with: @student.name
    fill_in "Personal phone", with: @student.personal_phone
    fill_in "Previous school", with: @student.previous_school
    fill_in "Previous school type", with: @student.previous_school_type
    fill_in "Scolarship", with: @student.scolarship
    fill_in "Security institution", with: @student.security_institution
    fill_in "Tutor name", with: @student.tutor_name
    fill_in "Tutor parenthood", with: @student.tutor_parenthood
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
