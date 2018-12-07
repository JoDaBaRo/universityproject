module API 
  class Api::TeachersController < ApplicationController
    before_action :authenticate_user!
    def fetch_teachers
      #tc = TeacherCategory.where(licence_type: params[:licence_type_id]).pluck(:teacher_id)
        t = Teacher.where(licence_types: params[:licence_type_id]).as_json
        t.each_with_index do |h,i|
        	t[i].merge!(Person.where(id: h["person_id"]).as_json[0].except!("id"))
        end		
        render json: t.to_json
    end
  end
end
