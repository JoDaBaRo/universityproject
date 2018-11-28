class Licence < ApplicationRecord
  belongs_to :licence_type
  has_many :vehicle_categories
  has_many :practical_classes
  has_many :student_licences
  has_many :student
end
