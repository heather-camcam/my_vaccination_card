class VaccinationsController < ApplicationController

  def index
    @vaccinations = Vaccination.all
  end

  def new
    @vaccination = Vaccination.new
  end

  def create
    Vaccination.create(vaccination_params)
    redirect_to '/vaccinations'
  end
end
