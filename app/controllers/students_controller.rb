class StudentsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy pdf ]

  # GET /students or /students.json
  def index
    @students = Student.all
  end

  # GET /pdf
  def pdf
  	# this method will be called by Dhalang
  end

  # GET /convert
  def convert
  	_url = request.base_url + pdf_path
  	_pdf = Dhalang::PDF.get_from_url(_url)
  	_file_name = "CEBcedulaInscripcion"
    File.open("#{Rails.root}/public/#{_file_name}.pdf", "w+b") << _pdf
	  redirect_to "/#{_file_name}.pdf"
  end

  # GET /students/1 or /students/1.json
  def show
  end

  def nuevo_ingreso
    
  end
  
  # GET /students/new
  def new
    @estadosMX = [
      'Aguascalientes',
      'Baja California',
      'Baja California Sur',
      'Campeche',
      'Chiapas',
      'Chihuahua',
      'Coahuila de Zaragoza',
      'Colima',
      'Ciudad de México',
      'Durango',
      'Guanajuato',
      'Guerrero',
      'Hidalgo',
      'Jalisco',
      'Estado de Mexico',
      'Michoacan de Ocampo',
      'Morelos',
      'Nayarit',
      'Nuevo Leon',
      'Oaxaca',
      'Puebla',
      'Queretaro de Arteaga',
      'Quintana Roo',
      'San Luis Potosi',
      'Sinaloa',
      'Sonora',
      'Tabasco',
      'Tamaulipas',
      'Tlaxcala',
      'Veracruz de Ignacio de la Llave',
      'Yucatan',
      'Zacatecas',
    ]
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students or /students.json
  def create
    @student = Student.new(student_params)
    
    respond_to do |format|
      if @student.save
        format.html { redirect_to convert_path(@student) }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  # PATCH/PUT /students/1 or /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: "Student was successfully updated." }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: "Student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_params
      params.require(:student).permit(:name, :birth_city, :birth_state, :birth_date, :address_street, :address_number, :address_complex, :address_cp, :address_phone, :email, :facebook, :personal_phone, :father_name, :father_live, :father_occupation, :father_phone, :mother_name, :mother_live, :mother_occupation, :mother_phone, :tutor_name, :tutor_parenthood, :previous_school, :previous_school_type, :scolarship, :security_institution, :medical_condition)
    end
end
