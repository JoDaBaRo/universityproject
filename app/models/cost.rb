class Cost < ApplicationRecord
  has_one :practical_cost
  has_many :cost_types
  belongs_to :student
  has_many :student_advances
end
