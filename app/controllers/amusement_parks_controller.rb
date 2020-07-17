class AmusementParksController < ApplicationController

  def show
    @amusement_park = AmusementPark.find(params[:id])
    @sorted_rides = @amusement_park.rides.order(:name)
  end
end
