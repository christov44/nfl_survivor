class WeeksController < ApplicationController

  def index
    @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
  end

  private 

  def week_params
    params.require(:week).permit(:number)
  end

end
