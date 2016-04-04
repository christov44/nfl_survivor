class WeeksController < ApplicationController

  def index
    @picks = Pick.all
    @weeks = Week.all
    @users = User.all
  end

  def show
    @week = Week.find(params[:id])
    @picks = current_user.picks
  end

  private 

  def week_params
    params.require(:week).permit(:number)
  end

end
