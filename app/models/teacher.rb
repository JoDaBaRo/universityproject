class Teacher < ApplicationRecord
  has_many :teacher_categories
  has_many :theorical_student_classes
  belongs_to :person
end
