class Cost < ApplicationRecord
	has_many :cost_types
  has_many :general_costs, through: :cost_types
  belongs_to :enrollment
  has_many :student_advances
  after_create :cost_type

  private

  def cost_type
   	general_types = GeneralCost.all.pluck(:id)
  	general_types.each do |type|
	  	self.cost_types.create(general_cost_id: type)
  	end	
  end 
end
