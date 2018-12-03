class VehicleCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_vehicle_category, only: [:edit, :show, :update, :destroy]

  def index
    @vehicle_categories = VehicleCategory.all
  end

  def new
    @vehicle_category = VehicleCategory.new
  end

  def edit
  end

  def create
    @vehicle_category = VehicleCategory.new(vehicle_category_params)

    respond_to do |format|
      if @vehicle_category.save
        format.html { redirect_to vehicle_categories_path, notice: 'El tipo de categoria se creo exitosamente.' }
      else
        format.html { redirect_to new_vehicle_category_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicle_category.update(vehicle_category_params)
        format.html { redirect_to vehicle_categories_path, notice: 'El tipo de categoria se creo exitosamente.' }
      else
        format.html { redirect_to new_vehicle_category_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @vehicle_category.destroy

    respond_to do |format|
      if @vehicle_category.errors.details.empty?
        format.html { redirect_to vehicle_categories_path(page: params[:page]), notice: 'El tipo de categoria se creo exitosamente.' }
      else
        format.html { redirect_to vehicle_categories_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def vehicle_category_params
    params.require(:vehicle_category).permit(
    :vehicle_type,
    :hourly_rate,
    :licence_type_id
    )
  end

  def set_vehicle_category
    @vehicle_category = VehicleCategory.find(params[:id])
  end

  end
