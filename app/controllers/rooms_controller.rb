class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
  end

  private

  def room_params
    params.require(:room).permit(:name, :introduction, :price, :address, :image).merge(user_id: current_user.id)
  end
end
