class Host::SpotsController < ApplicationController

  def index
    # Let's anticipate on next week (with login)
    @spots = current_user.spots
  end

  def new
    @spot = Spot.new
     @spot_feature = SpotFeature.new
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.user = current_user
    if @spot.save
      flash[:notice] = 'Successfully created spot.'

      redirect_to spot_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def spot_params
    params.require(:spot).permit(:name, :description, :address, :photo, features_attributes: [:feature, :_destroy])
  end
end
