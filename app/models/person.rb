class Person < ApplicationRecord
  has_one :student
  has_one :teacher
end
