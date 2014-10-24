require 'rails_helper'

  describe ViennaLunch::Restaurants::Zweitbester do
  it 'should have todays lunch' do
    @lunch = ViennaLunch::Restaurants::Zweitbester::lunch
    expect(@lunch).to match(/TAGESKARTE/i)
    expect(@lunch).not_to match(/GETRÄNKE/i)
  end
end
