class Person < ApplicationRecord
  has_one :student
  has_one :teacher
  after_create :create_children

  def create_children
    if role.include?("student")
      Student.create(person_id: id)
    end
    if role.include?("teacher")
      Teacher.create(person_id: id)
    end
  end


end
