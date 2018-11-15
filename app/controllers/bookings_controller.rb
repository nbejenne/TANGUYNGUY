class BookingsController < ApplicationController
  def index
    @next_bookings = current_user.bookings.where("starts_at >= ?", Date.today)
    @past_bookings = current_user.bookings.where("ends_at < ?", Date.today)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.spot = Spot.find(params[:spot_id])
    if @booking.save

      flash[:notice] = 'Successfully created booking.'
      redirect_to booking_path(@booking)
    else
      render 'spots/show'
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at)
  end
end
