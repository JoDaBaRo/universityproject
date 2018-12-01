class Cost < ApplicationRecord
  has_many :general_cost, through: :cost_types
  belongs_to :enrollment
  has_many :student_advances
end
