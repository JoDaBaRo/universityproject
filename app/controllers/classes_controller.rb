class ClassesController < ApplicationController
before_action :authenticate_user!

def index
  @classes = {practical: PracticalClass.all, theoretical: TheoreticalClass.all}
end

def new
end

def edit
end

end
