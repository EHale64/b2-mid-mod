require 'rails_helper'

RSpec.describe "Amusement Park show page" do
  it "displays name and price of admission" do
    hershey = AmusementPark.create(name: "Hershey Park", admission_price: 50.00)

    visit "/amusement_parks/#{hershey.id}"

    expect(page).to have_content(hershey.name)
    expect(page).to have_content("Admissions: $#{hershey.admission_price}")
  end

  it "shows the name of each ride in the park in alphabetical order" do
    hershey = AmusementPark.create(name: "Hershey Park", admission_price: 50.00)
    ride1 = hershey.rides.create(name: "Lightning Racer", thrill_rating: 6)
    ride2 = hershey.rides.create(name: "Storm Runner", thrill_rating: 8)
    ride3 = hershey.rides.create(name: "The Great Bear", thrill_rating: 3)

    visit "/amusement_parks/#{hershey.id}"

    within '.rides' do
      expect(page.all('li')[0]).to have_content(ride1.name)
      expect(page.all('li')[1]).to have_content(ride2.name)
      expect(page.all('li')[2]).to have_content(ride3.name)
    end
  end
end
