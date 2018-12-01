class PracticalStudentClass < ApplicationRecord
  belongs_to :enrollment
  belongs_to :practical_class
  belongs_to :vehicle
end
