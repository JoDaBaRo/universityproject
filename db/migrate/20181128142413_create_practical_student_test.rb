class CreatePracticalStudentTest < ActiveRecord::Migration[5.2]
  def change
    create_table :practical_student_tests do |t|
      t.datetime :test_date, null: false
      t.float :test_qualification, null: false
      t.boolean :approve, null: false
      t.integer :practical_test_id, null: false
      t.integer :student_id, null: false
      t.timestamps
    end
    add_index :practical_student_tests, :practical_test_id
    add_index :practical_student_tests, :student_id
  end
end
