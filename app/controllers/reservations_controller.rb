class ReservationsController < ApplicationController

  def index
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new(
      start_day: params[:reservation][:start_day],
      end_day: params[:reservation][:end_day],
      number: params[:reservation][:number],
      room_id: params[:reservation][:room_id]
      )
    @reservation.user_id = current_user.id
    @used_day = @reservation.end_day - @reservation.start_day
    @total = @reservation.room.price * @reservation.number * @used_day
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render "new(@reservation)"
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_day, :end_day, :user_id, :room_id, :number)
  end
end
