class PracticalCost < ApplicationRecord
  belongs_to :cost
  has_one :licence
end
