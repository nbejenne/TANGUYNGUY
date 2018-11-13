class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.spot = Spot.find(params[:spot_id])
    @booking.save
    redirect_to booking_path(@booking)
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end

end
