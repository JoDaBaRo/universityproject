class VehicleCategory < ApplicationRecord
  has_many :vehicles
  belongs_to :licence
end
