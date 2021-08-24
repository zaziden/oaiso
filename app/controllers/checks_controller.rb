class ChecksController < ApplicationController
  def index
    @allcheck = Allcheck.new
    @check = Check.new
    @room = Room.find(params[:room_id])
    @checks = @room.checks.includes(:user)
    @menus = Menu.where(user_id: current_user.id)
  end

  def create
    @room = Room.find(params[:room_id])
    @check = @room.checks.new(check_params)
    if @check.save
      redirect_to room_checks_path(@room)
    else
      @checks = @room.checks.includes(:user)
      render :index
    end
  end

  private

  def check_params
    params.require(:check).permit(:menuname, :menuprice, :menuallprice, :cup).merge(user_id: current_user.id)
  end

end
