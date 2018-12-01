class LicenceType < ApplicationRecord
  has_many :teacher_categories
  has_many :vehicle_categories
  has_many :practical_clasess
  has_many :enrollments
  has_many :student_licences
end
