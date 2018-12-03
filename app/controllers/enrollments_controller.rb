class EnrollmentsController < ApplicationController
before_action :authenticate_user!
before_action :set_enrollment, only: [:edit, :show, :update, :destroy]
before_action :set_student

  def index
    @enrollments = @student.enrollments.all
  end

  def new
    @enrollment = @student.enrollments.new
  end

  def edit
    
  end

  def create
    h = {}
    h["practical_hours"] = LicenceType.find(enrollment_params[:licence_type_id]).practical_hours
    h.merge!(enrollment_params)
    @enrollment = @student.enrollments.new(h)
    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to student_enrollments_path, notice: 'La matricula fue creada exitosamente.' }
      else
        format.html { redirect_to new_student_enrollment_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @enrollment.update(person_params)
        format.html { redirect_to student_enrollments_path, notice: "La matricula de  #{@enrollment.licence_type.category} fue actualizada exitosamente." }
      else
        format.html { redirect_to edit_student_enrollment_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @enrollment.destroy

    respond_to do |format|
      if @enrollment.errors.details.empty?
        format.html { redirect_to student_enrollments_path(page: params[:page]), notice: "La matricula de #{@enrollment.licence_type.category} fue eliminada exitosamente." }
      else
        format.html { redirect_to edit_student_enrollment_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private 

def enrollment_params
  params.require(:enrollment).permit(
  :enroll_date,
  :theoretical_hours,
  :practical_hours,
  :teacher_id,
  :licence_type_id
  )
end

def set_enrollment
  @enrollment = Enrollment.find(params[:id])
end

def set_student
  @student = Student.find(params[:student_id])
end

end
