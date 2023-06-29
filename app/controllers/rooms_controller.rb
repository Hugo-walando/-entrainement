class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end
end
