class TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_test, only: [:edit, :show, :update, :destroy]

  def index
    @tests = Test.all
  end

  def new
    @test = Test.new
  end

  def edit
  end

  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to tests_path, notice: 'El tipo de examen fue creada exitosamente.' }
      else
        format.html { redirect_to new_test_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to tests_path, notice: 'El tipo de examen fue actualizada correctamente.' }
      else
        format.html { redirect_to new_test_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @test.destroy

    respond_to do |format|
      if @test.errors.details.empty?
        format.html { redirect_to tests_path(page: params[:page]), notice: "El tipo de examen fue eliminada exitosamente." }
      else
        format.html { redirect_to tests_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

  private

  def test_params
    params.require(:test).permit(
    :test_type,
    :test_length,
    :test_value,
    )
  end

  def set_test
    @test = Test.find(params[:id])
  end

  end
