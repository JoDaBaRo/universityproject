class StudentAdvance < ApplicationRecord
  belongs_to :enrollment
  belongs_to :cost
end
