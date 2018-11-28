class CreateStudent < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.datetime :enroll_date, null: false
      t.integer :customer_id, null: false
      t.integer :licence_id, null: false
      t.integer :class_teacher_id, null: false
      t.timestamps
    end
    add_index :students, :customer_id
    add_index :students, :licence_id
    add_index :students, :class_teacher_id
  end
end
