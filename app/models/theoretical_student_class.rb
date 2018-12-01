class TheoreticalStudentClass < ApplicationRecord
  belongs_to :enrollment
  belongs_to :teacher
  belongs_to :theoretical_class
end
