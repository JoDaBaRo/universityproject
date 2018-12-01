class CreateEnrollment < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.datetime :enroll_date, null: false
      t.integer :theoretical_hours, null: false, default: 0
      t.integer :practical_hours, null: false
      t.integer :student_id, null: false
      t.integer :licence_type_id, null: false
      t.integer :teacher_category_id, null: false
      t.timestamps
    end
    add_index :enrollments, :student_id
    add_index :enrollments, :licence_type_id
    add_index :enrollments, :teacher_category_id
  end
end
