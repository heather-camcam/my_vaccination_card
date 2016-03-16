class HistoriesController < ApplicationController

  def index
    @histories = History.all
  end

  def new
    @history = History.new
    @vaccination = Vaccination.all
  end

  def create
    history = current_user.histories.create(vaccination_params)
    v = Vaccination.find(params[:vax])
    history.vaccinations << v
    redirect_to '/histories'
  end

  def edit
  end

  def vaccination_params
    params.require(:history).permit(:vax, :date_given, :clinic_name, :expiry_date)
  end

end
