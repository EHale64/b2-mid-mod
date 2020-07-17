require 'rails_helper'

RSpec.describe Ride, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe 'relationships' do
    it {should belong_to :amusement_park}
    it {should have_many :rides_mechanics}
    it {should have_many(:mechanics).through(:rides_mechanics)}
  end
end
