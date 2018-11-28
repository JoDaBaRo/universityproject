class LicenceType < ApplicationRecord
  has_many :licences
  has_many :teacher_categories
end
