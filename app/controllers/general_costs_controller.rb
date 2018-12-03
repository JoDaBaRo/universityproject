class GeneralCostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_general_cost, only: [:edit, :show, :update, :destroy]

  def index
    @general_costs = GeneralCost.all
  end

  def new
    @general_cost = GeneralCost.new
  end

  def edit
  end

  def create
    @general_cost = GeneralCost.new(general_cost_params)

    respond_to do |format|
      if @general_cost.save
        format.html { redirect_to general_costs_path, notice: 'El tipo de costo se creo exitosamente.' }
      else
        format.html { redirect_to new_general_cost_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @general_cost.update(general_cost_params)
        format.html { redirect_to general_costs_path, notice: 'El tipo de costo se actualizo exitosamente.' }
      else
        format.html { redirect_to new_general_cost_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @general_cost.destroy

    respond_to do |format|
      if @general_cost.errors.details.empty?
        format.html { redirect_to general_costs_path(page: params[:page]), notice: 'El tipo de costo se elimino exitosamente.' }
      else
        format.html { redirect_to general_costs_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def general_cost_params
    params.require(:general_cost).permit(
    :description,
    :value
    )
  end

  def set_general_cost
    @general_cost = GeneralCost.find(params[:id])
  end

end
