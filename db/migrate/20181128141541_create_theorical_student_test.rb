class CreateTheoricalStudentTest < ActiveRecord::Migration[5.2]
  def change
    create_table :theorical_student_tests do |t|
      t.datetime :test_date, null: false
      t.float :test_qualification, null: false
      t.boolean :approve, null: false
      t.integer :theorical_test_id, null: false
      t.integer :student_id, null: false
      t.timestamps
    end
    add_index :theorical_student_tests, :theorical_test_id
    add_index :theorical_student_tests, :student_id
  end
end
