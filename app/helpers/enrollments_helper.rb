module EnrollmentsHelper
  def student_debt(enrollment)
    total_cost = enrollment.cost.first.total_value
    total_payment = enrollment.student_advances.sum(:advance_value)
    total_debt = total_cost - total_payment
  end

  def student_name(enrollmet)
  	person = enrollmet.student.person
  	student_name =  "#{person.name.capitalize} #{person.last_name.capitalize}"
  end
end
