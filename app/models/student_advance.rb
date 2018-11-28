class StudentAdvance < ApplicationRecord
  belongs_to :student
  belongs_to :cost
end
