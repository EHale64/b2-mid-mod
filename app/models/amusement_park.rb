class AmusementPark < ApplicationRecord
  has_many :rides

  def sort_rides
   @sorted_rides = self.rides.order(:name)
  end

  def average_thrills
    rides.average(:thrill_rating).to_f
  end
end
