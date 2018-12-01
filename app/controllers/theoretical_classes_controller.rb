class TheoreticalClassesController < ApplicationController
before_action :authenticate_user!
before_action :set_theoretical_class, only: [:edit, :show, :update, :destroy]

def index
  @theoretical_classes = TheoreticalClass.all
end

def new
  @theoretical_class = TheoreticalClass.new
end

def edit
end

def create
  @theoretical_class = TheoreticalClass.new(theoretical_class_params)

  respond_to do |format|
    if @theoretical_class.save
      format.html { redirect_to theoretical_classes_path, notice: 'La clase fue creada exitosamente.' }
    else
      format.html { redirect_to new_theoretical_class_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
    end
  end
end

def update
  respond_to do |format|
    if @theoretical_class.update(theoretical_class_params)
      format.html { redirect_to theoretical_classes_path, notice: 'La clase fue actualizada correctamente.' }
    else
      format.html { redirect_to new_theoretical_class_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
    end
  end
end

def destroy
  @theoretical_class.destroy

  respond_to do |format|
    if @theoretical_class.errors.details.empty?
      format.html { redirect_to theoretical_classes_path(page: params[:page]), notice: "La clase fue eliminada exitosamente." }
    else
      format.html { redirect_to theoretical_classes_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
    end
  end
end

private

def theoretical_class_params
  params.require(:theoretical_class).permit(
  :description,
  :class_length,
  )
end

def set_theoretical_class
  @theoretical_class = TheoreticalClass.find(params[:id])
end

end
