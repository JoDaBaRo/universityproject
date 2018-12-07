module API 
  class Api::StudentsController < ApplicationController
    before_action :authenticate_user!
    def fetch_students
      s = Student.where(enrollments: {teacher_id: params[:teacher_id]}).joins(:enrollments).uniq.as_json
      s.each_with_index do |h,i|
        s[i].merge!(Person.where(id: h["person_id"]).as_json[0].except!("id"))
      end   
      render json: s.to_json
    end
  end
end


