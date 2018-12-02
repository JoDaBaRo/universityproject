class PracticalClassesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_practical_class, only: [:edit, :show, :update, :destroy]

  def index
    @practical_classes = PracticalClass.all
  end

  def new
    @practical_class = PracticalClass.new
  end

  def edit
  end

  def create
    @practical_class = PracticalClass.new(practical_class_params)

    respond_to do |format|
      if @practical_class.save
        format.html { redirect_to practical_classes_path, notice: 'La clase fue creada exitosamente.' }
      else
        format.html { redirect_to new_practical_class_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @practical_class.update(practical_class_params)
        format.html { redirect_to practical_classes_path, notice: 'La clase fue actualizada correctamente.' }
      else
        format.html { redirect_to new_practical_class_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @practical_class.destroy

    respond_to do |format|
      if @practical_class.errors.details.empty?
        format.html { redirect_to practical_classes_path(page: params[:page]), notice: "La clase fue eliminada exitosamente." }
      else
        format.html { redirect_to practical_classes_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def practical_class_params
    params.require(:practical_class).permit(
    :description,
    :class_length,
    )
  end

  def set_practical_class
    @practical_class = PracticalClass.find(params[:id])
  end

  end
