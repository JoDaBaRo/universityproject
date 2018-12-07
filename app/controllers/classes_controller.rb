class ClassesController < ApplicationController
before_action :authenticate_user!

def index
  @classes = {practical: PracticalStudentClass.all, theoretical: TheoreticalStudentClass.all}
end

def new
end

def edit
end

def create  
  if class_params[:class_type] == "Practica"
    binding.pry
    new_params = {}.merge(class_params.except)
    en = Enrollment.find_by(teacher_id: new_params["pract_teacher_id"])
    new_params.except!("class_type", "licence_type_id", "pract_teacher_id")
    new_params.merge!(student_performance: "", enrollment_id: en.id)
    @class = PracticalStudentClass.new(new_params)
    if @class.save
      format.html { redirect_to classes_path, notice: "La clase fue creada exitosamente." } 
    else
      format.html { redirect_to classes_new_path, notice: "La clase no pudo ser creada." }
    end
  else
    teacher = Teacher.find_by(id: class_params[:theo_teacher_id])
    TheoreticalStudentClass.create_class(class_params)
  end
end

private 

def class_params
  params.permit(:class_type, :licence_type_id, :theo_teacher_id, :practical_class_id, :thoe_topic_id, :pract_teacher_id, :class_date).delete_if {|key, value| value.blank?}
end

end
