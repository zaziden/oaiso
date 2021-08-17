class GestsController < ApplicationController
  def new
    @gest = Gest.new
  end

  def create
    @gest = Gest.new(gest_params)
    if @gest.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def gest_params
    params.require(:gest).permit(:gest_name).merge(user_id: current_user.id)
  end
end
