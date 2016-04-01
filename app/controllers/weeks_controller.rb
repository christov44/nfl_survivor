class WeeksController < ApplicationController

  before_action :authenticate_admin!, only: [:edit, :update, :destroy]

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
