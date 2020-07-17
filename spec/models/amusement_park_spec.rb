require 'rails_helper'

RSpec.describe AmusementPark, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe 'relationships' do
    it {should have_many :rides}
  end

  it "should give the average_thrills of all rides" do
    hershey = AmusementPark.create(name: "Hershey Park", admission_price: 50.00)
    ride1 = hershey.rides.create(name: "Lightning Racer", thrill_rating: 6)
    ride2 = hershey.rides.create(name: "Storm Runner", thrill_rating: 8)
    ride3 = hershey.rides.create(name: "The Great Bear", thrill_rating: 3)
    ride4 = hershey.rides.create(name: "Alpine Dash", thrill_rating: 4)

    expect(hershey.average_thrills).to eq(5.25)
  end
end
