class AmusementPark < ApplicationRecord
  has_many :rides

  def sort_rides
   @sorted_rides = self.rides.order(:name)
  end
end
