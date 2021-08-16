class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:menu_name, :price).merge(user_id: current_user.id)
  end
end
