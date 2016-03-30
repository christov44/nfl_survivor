class MatchupsController < ApplicationController

  before_action :find_matchup, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit, :destroy]
  before_action :authenticate_user!

  def index
    @matchups = Matchup.all
  end

  def new
    @matchup = Matchup.new
  end

  def create
    if @matchup = Matchup.create(matchup_params)
      redirect_to matchups_path, notice: "Matchup was successfully created"
    else
      flash.now[:error] = "You screwed something up so matchup was not created"
      render :new
    end
  end

  def show
  end

  def update
    if @matchup.update(matchup_params)
      redirect_to matchups_path, notice: "Matchup was successfully updated"
    else
      flash.now[:error] = "You screwed something up so matchup was not updated"
      render :edit
    end
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
