class PracticalClass < ApplicationRecord
  has_many :class_teachers
  belongs_to :licence
  has_many :practical_student_classes
end
