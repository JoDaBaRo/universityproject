class TeacherCategoriesController < ApplicationController
before_action :authenticate_user!
before_action :set_teacher_category, only: [:edit,:show, :update, :destroy]
before_action :set_teacher

  def index
    @teacher_categories = @teacher.teacher_categories.all
  end

  def new
    @teacher_category = @teacher.teacher_categories.new
  end

  def edit
    
  end

  def create
    @teacher_category = @teacher.teacher_categories.new(teacher_category_params)

    respond_to do |format|
      if @teacher_category.save
        format.html { redirect_to teacher_teacher_categories_path(@teacher), notice: 'La categoria fue creada exitosamente.' }
      else
        format.html { redirect_to new_teacher_teacher_category, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @teacher_category.update(teacher_category_params)
        format.html { redirect_to teacher_teacher_categories_path(@teacher), notice: "La categoria de  #{@teacher.person.name} fue actualizada exitosamente." }
      else
        format.html { redirect_to edit_teacher_teacher_category_path(@teacher_category), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @teacher_category.destroy

    respond_to do |format|
      if @teacher_category.errors.details.empty?
        format.html { redirect_to teacher_teacher_categories_path(page: params[:page]), notice: "La categoria de #{@teacher.person.name} fue eliminada exitosamente." }
      else
        format.html { redirect_to edit_teacher_teacher_category_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private 

def teacher_category_params
  params.require(:teacher_category).permit(
    :teacher_id,
    :licence_type_id
  )
end

def set_teacher_category
  @teacher_category = TeacherCategory.find(params[:id])
end

def set_teacher
  @teacher = Teacher.find(params[:teacher_id])
end

end
