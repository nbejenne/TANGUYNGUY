class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @spots = Spot.where.not(latitude: nil, longitude: nil)

    @markers = @spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude
      }
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @booking = Booking.new


    # @marker = {
    #     lng: @spot.longitude,
    #     lat: @spot.latitude
    #   }
  end
end
