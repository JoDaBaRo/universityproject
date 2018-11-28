class CreateTheoricalStudentClass < ActiveRecord::Migration[5.2]
  def change
    create_table :theorical_student_classes do |t|
      t.datetime :class_date, null: false
      t.integer :student_id, null: false
      t.integer :teacher_id, null: false
      t.integer :teoric_class_id, null: false
      t.timestamps
    end
    add_index :theorical_student_classes, :student_id
    add_index :theorical_student_classes, :teacher_id
    add_index :theorical_student_classes, :teoric_class_id
  end
end
