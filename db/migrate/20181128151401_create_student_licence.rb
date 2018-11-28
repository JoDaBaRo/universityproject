class CreateStudentLicence < ActiveRecord::Migration[5.2]
  def change
    create_table :student_licences do |t|
      t.integer :student_id, null: false
      t.integer :licence_id, null: false
      t.datetime :expedition_date, null: false
      t.datetime :expiration_date, null: false
      t.timestamps
    end
    add_index :student_licences, :student_id
    add_index :student_licences, :licence_id
  end
end
