class ClassesController < ApplicationController
before_action :authenticate_user!

def index
  @classes = []
end

def new
end

def edit
end

end
