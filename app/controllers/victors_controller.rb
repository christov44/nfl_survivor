class VictorsController < ApplicationController

  before_action :set_victor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @victors = Victor.all
  end

  def new
    @victor = Victor.new
  end

  def create
    @victor = Victor.new(victor_params)

    if @victor.save
      redirect_to victors_path, notice: "Victor was successfully created"
    else
      flash.now[:error] = "You screwed something up so victor was not created"
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @victor.update(victor_params)
      redirect_to victors_path, notice: "victor was successfully updated"
    else
      flash.now[:error] = "You screwed something up so victor was not updated"
      render :edit
    end
  end

  def destroy
    @victor.destroy
    redirect_to victors_path
  end

  private

  def set_victor
    @victor = Victor.find(params[:id])
  end

  def victor_params
    params.require(:victor).permit(:team_id, :week_id)
  end

end
