class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :birth_city
      t.string :birth_state
      t.date :birth_date
      t.string :address_street
      t.string :address_number
      t.string :address_complex
      t.string :address_cp
      t.string :address_phone
      t.string :email
      t.string :facebook
      t.string :personal_phone
      t.string :father_name
      t.boolean :father_live
      t.string :father_occupation
      t.string :father_phone
      t.string :mother_name
      t.boolean :mother_live
      t.string :mother_occupation
      t.string :mother_phone
      t.string :tutor_name
      t.string :tutor_parenthood
      t.string :previous_school
      t.string :previous_school_type
      t.string :scolarship
      t.string :security_institution
      t.text :medical_condition

      t.timestamps
    end
  end
end
