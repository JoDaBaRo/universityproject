class RemoveIndex < ActiveRecord::Migration[5.2]
  def change
  	remove_column :practical_student_classes, :enrollment_id
  	remove_column :practical_student_classes, :practical_class_id
  end
end
