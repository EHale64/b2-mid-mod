require 'rails_helper'

RSpec.describe "Mechanics show page" do
  it "displays name, years of experience and the names of all rides they are working on" do
    kara = Mechanic.create(name: "Kara Smith", years_of_experience: 11)
    
  end
end
