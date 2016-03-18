class HistoriesController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def index

  end

  def show
    @histories = History.all
    render json: @histories.to_json(include: [:vaccination])
  end

  def new
    @history = History.new
    @vaccination = Vaccination.all
  end

  def create
    v = Vaccination.find(params[:vax])
    history = current_user.histories.new(vaccination_params)
    history.user_id = current_user.id
    history.vaccination_id = v.id
    history.save
    redirect_to '/histories'
  end

  def edit
    @history = History.find(params[:id])
    # byebug
  end

  def update
    @history = History.find(params[:id])
    @history.update(vaccination_params)
    redirect_to '/histories'
  end

  def vaccination_params
    params.require(:history).permit(:vax, :date_given, :clinic_name, :expiry_date)
  end

end
