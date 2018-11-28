class Vehicle < ApplicationRecord
  belongs_to :vehicle_category
  has_many :vehicle_consumes
  belongs_to :class_teacher
end
