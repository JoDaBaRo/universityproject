module API 
  class Api::TeachersController < ApplicationController
    before_action :authenticate_user!
    def fetch_teachers
      tc = TeacherCategory.where(licence_type: params[:licence_type_id]).pluck(:teacher_id)
      t = Teacher.where(id: tc)
      render json: Person.where(id: t).to_json
    end
  end
end
