class GeneralCost < ApplicationRecord
	has_many :cost_types
  has_many :costs, through: :cost_types
end
