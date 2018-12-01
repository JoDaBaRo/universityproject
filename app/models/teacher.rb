class Teacher < ApplicationRecord
  has_many :teacher_categories
  has_many :theoretical_student_classes
  belongs_to :person
end
