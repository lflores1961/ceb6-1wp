json.extract! student, :id, :name, :birth_city, :birth_state, :birth_date, :address_street, :address_number, :address_complex, :address_cp, :address_phone, :email, :facebook, :personal_phone, :father_name, :father_live, :father_occupation, :father_phone, :mother_name, :mother_live, :mother_occupation, :mother_phone, :tutor_name, :tutor_parenthood, :previous_school, :previous_school_type, :scolarship, :security_institution, :medical_condition, :created_at, :updated_at
json.url student_url(student, format: :json)
