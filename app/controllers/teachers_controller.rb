class TeachersController < ApplicationController
before_action :authenticate_user!

def index
  @teachers = Teacher.all
end

def new
end

def edit
end

end
