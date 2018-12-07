class TheoreticalStudentClass < ApplicationRecord
  belongs_to :enrollment
  belongs_to :teacher
  belongs_to :theoretical_class

  def self.create_class(params, teacher)
    en = Enrollment.find_by(teacher_id: teacher.id)
    PracticalStudentClass.create(
      class_date: params[:class_date],
      enrollment_id: en.id,
      theoretical_class_id: params[:topic_id],
      teacher_id: teacher.id
      )
  end
end
