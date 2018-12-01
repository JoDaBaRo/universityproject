class Student < ApplicationRecord
  has_many :enrollments
  belongs_to :person
  has_many :licence_types
end
