class PracticalLicenceClassesController < ApplicationController
before_action :authenticate_user!
before_action :set_practical_licence_class, only: [:edit,:show, :update, :destroy]
before_action :set_practical_class

  def index
    @practical_licence_classes = @practical_class.practical_licence_classes.all
  end

  def new
    @practical_licence_class = @practical_class.practical_licence_classes.new
  end

  def edit
    
  end

  def create
    @practical_licence_class = @practical_class.practical_licence_classes.new(practical_licence_class_params)

    respond_to do |format|
      if @practical_licence_class.save
        format.html { redirect_to practical_class_practical_licence_classes_path(@practical_class), notice: 'La categoria fue creada exitosamente.' }
      else
        format.html { redirect_to new_practical_class_practical_licence_class, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @practical_licence_class.update(practical_licence_class_params)
        format.html { redirect_to practical_class_practical_licence_classes_path(@practical_class), notice: "La categoria de  #{@practical_class.description} fue actualizada exitosamente." }
      else
        format.html { redirect_to edit_practical_class_practical_licence_class_path(@practical_licence_class), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @practical_licence_class.destroy

    respond_to do |format|
      if @practical_licence_class.errors.details.empty?
        format.html { redirect_to practical_class_practical_licence_classes_path(page: params[:page]), notice: "La categoria de #{@practical_class.description} fue eliminada exitosamente." }
      else
        format.html { redirect_to edit_practical_class_practical_licence_class_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private 

def practical_licence_class_params
  params.require(:practical_licence_class).permit(
    :practical_class_id,
    :licence_type_id
  )
end

def set_practical_licence_class
  @practical_licence_class = PracticalLicenceClass.find(params[:id])
end

def set_practical_class
  @practical_class = PracticalClass.find(params[:practical_class_id])
end

end
