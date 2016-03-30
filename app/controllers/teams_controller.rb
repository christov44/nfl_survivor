class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!


  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to teams_path, notice: "Team was successfully created"
    else
      flash.now[:error] = "You screwed something up so team was not created"
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @team.update(team_params)
      redirect_to teams_path, notice: "Team was successfully updated"
    else
      flash.now[:error] = "You screwed something up so team was not updated"
      render :edit
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name)
  end

end
