class PracticalClass < ApplicationRecord
  has_many :vehicle_consumes
  belongs_to :licence_type
  has_many :practical_student_classes
end
