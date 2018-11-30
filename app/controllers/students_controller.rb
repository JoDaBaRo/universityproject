class StudentsController < ApplicationController
before_action :authenticate_user!

def index
  @students = Student.all
end

def new
end

def edit
end

end
