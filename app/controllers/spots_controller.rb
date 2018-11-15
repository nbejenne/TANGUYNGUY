class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @spots = Spot.search_by_address_and_name_and_description(params[:query]).where.not(latitude: nil, longitude: nil)
    else
      @spots = Spot.where.not(latitude: nil, longitude: nil)
    end
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
