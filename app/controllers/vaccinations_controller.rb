class VaccinationsController < ApplicationController

  def index
    @vaccinations = Vaccination.all
  end

  def new
    @vaccination = Vaccination.new

  end
end
