class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher_category
  belongs_to :licence_type
  has_many :student_advances
  has_many :control_student_tests
  has_many :student_tests
  has_many :theoretical_student_classes
  has_many :practical_student_classes
  has_many :costs
end
