require 'rails_helper'

  describe ViennaLunch::Restaurants::Ulrich do
  it 'should have todays lunch' do
    @lunch = ViennaLunch::Restaurants::Ulrich::lunch
    expect(@lunch).to match(/mit/i)
  end
end
