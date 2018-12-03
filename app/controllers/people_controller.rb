class PeopleController < ApplicationController
before_action :authenticate_user!
before_action :set_person, only: [:edit, :show, :update, :destroy]

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def edit
    
  end

  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to people_path, notice: 'La persona fue creada exitosamente.' }
      else
        format.html { redirect_to new_person_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to people_path, notice: "La persona de nombre #{@person.name} fue actualizada exitosamente." }
      else
        format.html { redirect_to new_person_path, alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo" }
      end
    end
  end

  def destroy
    @person.destroy

    respond_to do |format|
      if @person.errors.details.empty?
        format.html { redirect_to people_path(page: params[:page]), notice: "La persona de nombre #{@person.name} fue eliminada exitosamente." }
      else
        format.html { redirect_to new_person_path(page: params[:page]), alert: "No fue posible concretar el registro, por favor revise los campos e intente de nuevo"}
      end
    end
  end

private 

def person_params
  params.require(:person).permit(
  :name,
  :last_name,
  :address,
  :phone_number,
  :id_number,
  role: []
  )
end

def set_person
  @person = Person.find(params[:id])
end

end
