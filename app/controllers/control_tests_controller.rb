class ControlTestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_control_test, only: [:edit, :show, :update, :destroy]

  def index
    @control_tests = ControlTest.all
  end

  def new
    @control_test = ControlTest.new
  end

  def edit
  end

  def create
    @control_test = ControlTest.new(control_test_params)

    respond_to do |format|
      if @control_test.save
        format.html { redirect_to control_tests_path, notice: 'La prueba de control fue creada exitosamente.' }
      else
        format.html { redirect_to new_control_test_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @control_test.update(control_test_params)
        format.html { redirect_to control_tests_path, notice: 'La prueba de control fue actualizada correctamente.' }
      else
        format.html { redirect_to new_control_test_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @control_test.destroy

    respond_to do |format|
      if @control_test.errors.details.empty?
        format.html { redirect_to control_tests_path(page: params[:page]), notice: "La prueba de control fue eliminada exitosamente." }
      else
        format.html { redirect_to control_tests_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def control_test_params
    params.require(:control_test).permit(
    :description,
    :test_length,
    )
  end

  def set_control_test
    @control_test = ControlTest.find(params[:id])
  end

  end
