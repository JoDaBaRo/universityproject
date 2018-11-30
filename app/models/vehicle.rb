class Vehicle < ApplicationRecord
  belongs_to :vehicle_category
  has_many :vehicle_consumes
  has_one :class_teacher
end
