class Person < ApplicationRecord
  has_one :customer
  has_one :teacher
end
