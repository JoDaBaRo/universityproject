class Vehicle < ApplicationRecord
  belongs_to :vehicle_category
  has_many :practical_student_classes
  has_many :vehicle_consumes
  validates :plate, uniqueness: true
end
