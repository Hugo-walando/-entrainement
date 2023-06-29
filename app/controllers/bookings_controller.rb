class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.room = Room.find(params[:room_id])
    @booking.save!
  end


  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
