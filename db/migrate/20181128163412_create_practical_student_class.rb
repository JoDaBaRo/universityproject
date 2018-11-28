class CreatePracticalStudentClass < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_student_classes do |t|
      t.text :student_performance, null: false
      t.datetime :class_date, null: false
      t.integer :student_id, null: false
      t.integer :practical_class_id, null: false
      t.timestamps
    end
    add_index :practical_student_classes, :student_id
    add_index :practical_student_classes, :practical_class_id
  end
end
