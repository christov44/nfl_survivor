class PicksController < ApplicationController

  before_action :find_pick, only: [:show, :edit, :update, :destroy]

  def index
    @picks = Pick.all
  end

  def new
    @pick = Pick.new
  end

  def set_pick #Had to create a custom method in order to Post a new pick within the weeks View
    @pick = Pick.new(set_pick_params)

    if @pick.save
      redirect_to picks_path, notice: "You just picked someone"
    else
      flash.now[:error] = "You have already picked either that team or that week"
      render :new
    end
  end

  def create
    @pick = Pick.new(pick_params)

    if @pick.save
      redirect_to picks_path, notice: "You just picked someone"
    else
      flash.now[:error] = "You have already picked either that team or that week"
      render :new
    end
  end

  def show
  end

  def update #Update is not working, because it says that pick or week is already taken
    @pick = Pick.new(pick_params)

    if @pick.update(pick_params)
      redirect_to picks_path, notice: "Your pick was successfully updated"
    else
      flash.now[:error] = "You screwed something up so your pick was not updated"
      render :edit
    end
  end

  def edit
  end

  def destroy
    @pick.destroy
    redirect_to picks_path
  end

  private

  def find_pick
    @pick = Pick.find(params[:id])
  end

  def pick_params
    params.require(:pick).permit(:team_id, :week_id, :user_id)
  end

  def set_pick_params #Custom private method to ensure the custom method actually posted to the db
    params.permit(:team_id, :week_id, :user_id)
  end
end
