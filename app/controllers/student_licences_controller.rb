class StudentLicencesController < ApplicationController
before_action :authenticate_user!
before_action :set_student_licence, only: [:edit,:show, :update, :destroy]
before_action :set_student

  def index
    @student_licences = @student.student_licences.all
  end

  def new
    @student_licence = @student.student_licences.new
  end

  def edit
    
  end

  def create
    @student_licence = @student.student_licences.new(student_licence_params)

    respond_to do |format|
      if @student_licence.save
        format.html { redirect_to student_student_licences_path(@student), notice: 'La licencia fue creada exitosamente.' }
      else
        format.html { redirect_to new_student_student_licence_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @student_licence.update(student_licence_params)
        format.html { redirect_to student_student_licences_path(@student), notice: "La licencia de  #{@student.person.name} fue actualizada exitosamente." }
      else
        format.html { redirect_to edit_student_student_licence_path(@student_licence), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @student_licence.destroy

    respond_to do |format|
      if @student_licence.errors.details.empty?
        format.html { redirect_to student_student_licences_path(page: params[:page]), notice: "La licencia de #{@student.person.name} fue eliminada exitosamente." }
      else
        format.html { redirect_to edit_student_student_licence_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private 

def student_licence_params
  params.require(:student_licence).permit(
    :student_id,
    :licence_type_id,
    :expedition_date,
    :expiration_date
  )
end

def set_student_licence
  @student_licence = StudentLicence.find(params[:id])
end

def set_student
  @student = Student.find(params[:student_id])
end

end
