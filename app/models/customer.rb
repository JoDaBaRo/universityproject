class Customer < ApplicationRecord
  has_many :students
  belongs_to :person
end
