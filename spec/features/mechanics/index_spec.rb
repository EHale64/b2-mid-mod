require 'rails_helper'

RSpec.describe "Mechanics index page" do
  it "displays all mechanics and their years of experience" do
    sam = Mechanic.create(name: "Sam Mills", years_of_experience: 10)
    kara = Mechanic.create(name: "Kara Smith", years_of_experience: 11)

    visit "/mechanics"

    expect(page).to have_content("All Mechanics")
    expect(page).to have_content(sam.name)
    expect(page).to have_content(sam.years_of_experience)
    expect(page).to have_content(kara.name)
    expect(page).to have_content(kara.years_of_experience)
  end
end
