module ClassesHelper
  def teachers()
    teacher_array = []
    Teacher.all.each  do |teacher|
      teacher_array << {id: teacher.id, name: "#{teacher.person.name} #{teacher.person.last_name}"}
    end
    teacher_array 
  end
end
