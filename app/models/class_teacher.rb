class ClassTeacher < ApplicationRecord
  belongs_to :teacher_category
  belongs_to :practical_class
  has_many :students
  belongs_to: :vehicle
end
