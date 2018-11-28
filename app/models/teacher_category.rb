class TeacherCategory < ApplicationRecord
  belongs_to :teacher
  belongs_to :licence_type
  has_many :class_teachers
end
