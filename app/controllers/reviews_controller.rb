class ReviewsController < ApplicationController

  # POST /bookings/:booking_id/reviews
  def create
    @booking = Booking.find(params[:booking_id])
    @booking.update(review_params)
    redirect_to spot_path(@booking.spot)
  end


private

  def review_params
    params.require(:booking).permit(:review, :rating)
  end

end
