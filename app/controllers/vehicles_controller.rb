class VehiclesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vehicle, only: [:edit, :show, :update, :destroy]

  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to vehicles_path, notice: 'El vehiculo se creo exitosamente.' }
      else
        format.html { redirect_to new_vehicle_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to vehicles_path, notice: 'El vehiculo se actualizo exitosamente.' }
      else
        format.html { redirect_to new_vehicle_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @vehicle.destroy

    respond_to do |format|
      if @vehicle.errors.details.empty?
        format.html { redirect_to vehicles_path(page: params[:page]), notice: 'El vehiculo se elimino exitosamente.' }
      else
        format.html { redirect_to vehicles_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(
    :plate,
    :brand,
    :displacement,
    :name,
    :model_year,
    :vehicle_category_id,
    )
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

end
