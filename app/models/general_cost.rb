class GeneralCost < ApplicationRecord
  has_many :costs, through: :cost_types
end
