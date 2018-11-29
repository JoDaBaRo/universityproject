class VehiclesController < ApplicationController
before_action :authenticate_user!

def index
  @vehicles = Vehicle.all
end

def new
end

def edit
end

end
