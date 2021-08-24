class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
    @gest = Gest.where(user_id: current_user.id)
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:room_name).merge(user_id: current_user.id)
  end
end