class Cost < ApplicationRecord
  has_many :general_costs, through: :cost_types
  belongs_to :enrollment
  has_many :student_advances
end
