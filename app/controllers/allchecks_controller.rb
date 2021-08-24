class AllchecksController < ApplicationController
  def new
    @allcheck = Allcheck.new
    @allchecks = @room.checks.includes(:user)
  end

  def create
    @room = Room.find(params[:room_id])
    @allcheck = @room.allchecks.new(allcheck_params)
    @allcheck.save
  end

  private
  def allcheck_params
    params.require(:allcheck).permit(:allcheck).merge(user_id: current_user.id)
  end

end
