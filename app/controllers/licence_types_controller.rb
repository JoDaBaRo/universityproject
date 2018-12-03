class LicenceTypesController < ApplicationController

before_action :authenticate_user!
before_action :set_licence_type_class, only: [:edit, :show, :update, :destroy]

def index
  @licence_types = LicenceType.all
end

def new
  @licence_type = LicenceType.new
end

def edit
end

def create
  @licence_type = LicenceType.new(licence_type_params)

  respond_to do |format|
    if @licence_type.save
      format.html { redirect_to licence_types_path, notice: 'El tipo de licencia fue creada exitosamente.' }
    else
      format.html { redirect_to new_licence_type_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
    end
  end
end

def update
  respond_to do |format|
    if @licence_type.update(licence_type_params)
      format.html { redirect_to licence_types_path, notice: 'El tipo de licencia fue actualizada correctamente.' }
    else
      format.html { redirect_to new_licence_type_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
    end
  end
end

def destroy
  @licence_type.destroy

  respond_to do |format|
    if @licence_type.errors.details.empty?
      format.html { redirect_to licence_types_path(page: params[:page]), notice: "El tipo de licencia fue eliminada exitosamente." }
    else
      format.html { redirect_to licence_types_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
    end
  end
end

private

def licence_type_params
  params.require(:licence_type).permit(
  :allowed_vehicles,
  :category,
  :service_type,
  :licence_cost,
  :practical_hours
  )
end

def set_licence_type_class
  @licence_type = LicenceType.find(params[:id])
end

end	