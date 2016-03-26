class MatchupsController < ApplicationController

  before_action :find_matchup, only: [:show, :edit, :update, :destroy]

  def index
    @matchups = Matchup.all
  end

  def new
    @matchup = Matchup.new
  end

  def create
    @matchup = Matchup.create(matchup_params)
    redirect_to matchup_path(@matchup)
  end

  def show
  end

  def update
    @matchup.update(matchup_params)
    redirect_to matchup_path(@matchup)
  end

  def edit
  end

  def destroy
    @matchup.destroy
    redirect_to abilities_path
  end

  private

  def find_matchup
    @matchup = Matchup.find(params[:id])
  end

  def matchup_params
    params.require(:matchup).permit(:week)
  end
  
end
