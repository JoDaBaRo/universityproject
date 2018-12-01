class CreateStudentAdvance < ActiveRecord::Migration[5.2]
  def change
    create_table :student_advances do |t|
      t.decimal :advance_value, null: false
      t.string :description, null: false, default: ""
      t.datetime :advance_date, null: false
      t.integer :enrollment_id, null: false
      t.integer :cost_id, null: false
      t.timestamps
    end
    add_index :student_advances, :enrollment_id
    add_index :student_advances, :cost_id
  end
end
