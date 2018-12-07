module API 
  class Api::ClassesController < ApplicationController
    before_action :authenticate_user!
    def fetch_topics
      if params[:class_type] == "Teorica"  
        render json: TheoreticalClass.all.to_json
      else
        render json: PracticalClass.all.to_json
      end
    end
  end
end


