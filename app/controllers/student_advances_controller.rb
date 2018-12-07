class StudentAdvancesController < ApplicationController
before_action :authenticate_user!
before_action :set_student_advance, only: [:edit, :show, :update, :destroy]
before_action :set_enrollment
before_action :set_student

  def index
    @student_advances = @enrollment.student_advances.all
  end

  def new
    @student_advance = @enrollment.student_advances.new
  end

  def edit

  end

  def create
    @student_advance = @enrollment.student_advances.new(student_advance_params.merge(cost_id: @enrollment.cost.first.id))
    respond_to do |format|
      if @student_advance.save
        format.html { redirect_to student_enrollment_student_advances_path, notice: 'El anticipo fue creado exitosamente.' }
      else
        format.html { redirect_to new_student_enrollment_student_advance_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @student_advance.update(person_params)
        format.html { redirect_to student_enrollment_student_advances_path, notice: "El pago fue actualizado exitosamente." }
      else
        format.html { redirect_to edit_student_enrollment_student_advance, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @enrollment.destroy

    respond_to do |format|
      if @student_advance.errors.details.empty?
        format.html { redirect_to student_enrollment_student_advances_path(page: params[:page]), notice: "El pago fue eliminada exitosamente." }
      else
        format.html { redirect_to edit_student_enrollment_student_advance(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private

def student_advance_params
  params.require(:student_advance).permit(
  :advance_value,
  :description,
  :advance_date
  )
end

def set_enrollment
  @enrollment = Enrollment.find(params[:enrollment_id])
end

def set_student_advance
  @student_advance = StudentAdvance.find(params[:id])
end

def set_student
  @student = Student.find(params[:student_id])
end

end
