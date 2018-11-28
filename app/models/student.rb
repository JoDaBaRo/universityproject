class Student < ApplicationRecord
  belongs_to :customer
  belongs_to :licence
  belongs_to :class_teacher
  has_many :student_licences
  has_many :student_advances
  has_many :control_student_tests
  has_many :theorical_student_tests
  has_many :theorical_student_classes
  has_many :practical_student_tests
  has_many :practical_student_classes
  has_many :costs
end
