class TeacherCategory < ApplicationRecord
  belongs_to :teacher
  belongs_to :licence_type
end
