class SpotsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @spots = Spot.search_by_address_and_name_and_description(params[:query])
    else
      @spots = Spot.all
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @booking = Booking.new
  end
end
