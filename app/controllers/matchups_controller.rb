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
    redirect_to matchups_path
  end

  def show
  end

  def update
    @matchup.update(matchup_params)
    redirect_to matchups_path
  end

  def edit
  end

  def destroy
    @matchup.destroy
    redirect_to matchups_path
  end

  private

  def find_matchup
    @matchup = Matchup.find(params[:id])
  end

  def matchup_params
    params.require(:matchup).permit(:home_team_id, :away_team_id, :week_id)
  end

end
