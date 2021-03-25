require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { address_complex: @student.address_complex, address_cp: @student.address_cp, address_number: @student.address_number, address_phone: @student.address_phone, address_street: @student.address_street, birth_city: @student.birth_city, birth_date: @student.birth_date, birth_state: @student.birth_state, email: @student.email, facebook: @student.facebook, father_live: @student.father_live, father_name: @student.father_name, father_occupation: @student.father_occupation, father_phone: @student.father_phone, medical_condition: @student.medical_condition, mother_live: @student.mother_live, mother_name: @student.mother_name, mother_occupation: @student.mother_occupation, mother_phone: @student.mother_phone, name: @student.name, personal_phone: @student.personal_phone, previous_school: @student.previous_school, previous_school_type: @student.previous_school_type, scolarship: @student.scolarship, security_institution: @student.security_institution, tutor_name: @student.tutor_name, tutor_parenthood: @student.tutor_parenthood } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { address_complex: @student.address_complex, address_cp: @student.address_cp, address_number: @student.address_number, address_phone: @student.address_phone, address_street: @student.address_street, birth_city: @student.birth_city, birth_date: @student.birth_date, birth_state: @student.birth_state, email: @student.email, facebook: @student.facebook, father_live: @student.father_live, father_name: @student.father_name, father_occupation: @student.father_occupation, father_phone: @student.father_phone, medical_condition: @student.medical_condition, mother_live: @student.mother_live, mother_name: @student.mother_name, mother_occupation: @student.mother_occupation, mother_phone: @student.mother_phone, name: @student.name, personal_phone: @student.personal_phone, previous_school: @student.previous_school, previous_school_type: @student.previous_school_type, scolarship: @student.scolarship, security_institution: @student.security_institution, tutor_name: @student.tutor_name, tutor_parenthood: @student.tutor_parenthood } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
