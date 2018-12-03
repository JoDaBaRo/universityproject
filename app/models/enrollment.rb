class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :licence_type
  has_many :student_advances
  has_many :control_student_tests
  has_many :student_tests
  has_many :theoretical_student_classes
  has_many :practical_student_classes
  has_many :cost
  after_create :set_cost

  private

  def set_cost
  	self.cost.create(total_value: 0)
  	self.cost.first.cost_types.create()
  	cost_value = self.licence_type.licence_cost + self.cost.first.general_costs.sum(:value)
  	self.cost.update(total_value: cost_value)
  end
end
