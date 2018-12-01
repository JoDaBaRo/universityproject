class Student < ApplicationRecord
  has_many :enrollments
  belongs_to :person
  has_many :student_licences
end
