class HistoryController < ApplicationController

  def index
    @vaccinations = History.all
  end

  def new
    @vaccination = History.new
  end

  def create
    History.create(vaccination_params)
    redirect_to '/history'
  end
end
