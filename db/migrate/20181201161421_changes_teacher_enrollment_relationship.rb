class ChangesTeacherEnrollmentRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_column :enrollments, :teacher_category_id
    add_column :enrollments, :teacher_id, :integer
    add_index :enrollments, :teacher_id
  end
end
