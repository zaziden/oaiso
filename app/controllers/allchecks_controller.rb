class AllchecksController < ApplicationController

  def new
    @allcheck = Allcheck.new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    @allcheck = Allcheck.new(allcheck_params)
    if @allcheck.save
      redirect_to room_checks_path(@room)
    else
      @checks = @room.checks.includes(:user)
      redirect_to room_checks_path(@room)
    end
  end

  private
  def allcheck_params
    params.require(:allcheck).permit(:allcheck).merge(user_id: current_user.id, room_id: @room.id)
  end

end
