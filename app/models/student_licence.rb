class StudentLicence < ApplicationRecord
  belongs_to :student
  belongs_to :licence_type
end
