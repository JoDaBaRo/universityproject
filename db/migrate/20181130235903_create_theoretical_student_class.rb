class CreateTheoreticalStudentClass < ActiveRecord::Migration[5.2]
  def change
    create_table :theoretical_student_classes do |t|
      t.datetime :class_date, null: false
      t.integer :enrollment_id, null: false
      t.integer :teacher_id, null: false
      t.integer :theoretical_class_id, null: false
      t.timestamps
    end
    add_index :theoretical_student_classes, :enrollment_id
    add_index :theoretical_student_classes, :teacher_id
    add_index :theoretical_student_classes, :theoretical_class_id
  end
end
