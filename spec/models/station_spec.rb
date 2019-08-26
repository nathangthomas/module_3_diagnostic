require 'rails_helper'

RSpec.describe Station do
  it 'exists' do
    attrs = {
      name: "name",
      address: "1234 this is a street name",
      fuel_type: "petrol",
      distance: "20 miles",
      access_time: "20 min"

    }

    station = Station.new(attrs)

    expect(station).to be_a Station
    expect(station.name).to eq(attrs[:name])
  
  end
end
