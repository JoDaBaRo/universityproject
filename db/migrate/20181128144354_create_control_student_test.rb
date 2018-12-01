class CreateControlStudentTest < ActiveRecord::Migration[5.2]
  def change
    create_table :control_student_tests do |t|
      t.datetime :test_date, null: false
      t.float :test_qualification, null: false
      t.boolean :approve, null: false
      t.integer :control_test_id, null: false
      t.integer :enrollment_id, null: false
      t.timestamps
    end
    add_index :control_student_tests, :control_test_id
    add_index :control_student_tests, :enrollment_id
  end
end
