class AddColumns < ActiveRecord::Migration[5.2]
  def change
  	add_column :practical_student_classes, :vehicle_plate, :string
  	add_column :practical_student_classes, :erollment, :string
  	add_column :practical_student_classes, :practical_class, :string
  end
end
