class StudentAdvance < ApplicationRecord
  belongs_to :enrollment
  belongs_to :cost

  private

  def set_cost
    cost_id = Enrollment.find(enrollment_id: self.enrollment_id).costs.first
    binding.pry
    self.cost_id = cost_id
  end
end
