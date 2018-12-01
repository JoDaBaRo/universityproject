class Person < ApplicationRecord
  has_one :customer
  has_one :teacher
  has_one :student
end
