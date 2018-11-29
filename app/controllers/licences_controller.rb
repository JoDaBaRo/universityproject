class LicencesController < ApplicationController
before_action :authenticate_user!

def index
  @licences = Licence.all
end

def new
end

def edit
end

end
