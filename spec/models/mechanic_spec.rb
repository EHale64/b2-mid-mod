require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it {should have_many :rides_mechanics}
  it {should have_many(:rides).through(:rides_mechanics)}
end
