class TheoricalStudentClass < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :teoric_class
end
