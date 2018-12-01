module API 
  class Api::TeachersController < ApplicationController
    before_action :authenticate_user!
    def fetch_teachers
      t = Teacher.where(licence_types: params[:licence_type_id]).pluck(:person_id)

      render json: Person.where(id: t).to_json
    end
  end
end
