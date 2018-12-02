class PracticalClass < ApplicationRecord
  has_many :vehicle_consumes
  has_many :practical_licence_classes
  has_many :licence_types, through: :practical_licence_classes
  has_many :practical_student_classes
end
