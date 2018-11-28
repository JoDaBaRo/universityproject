class StudentLicence < ApplicationRecord
  belongs_to :student
  belongs_to :licence

end
