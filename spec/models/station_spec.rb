require 'rails_helper'

RSpec.describe Station do
  it 'exists' do
    attrs = {
      station_name: "name",
      street_address: "1234 this is a street name",
      fuel_type_code: "petrol",
      distance: "20 miles",
      access_days_time: "20 min"
    }

    station = Station.new(attrs)

    expect(station).to be_a Station
    expect(station.name).to eq(attrs[:station_name])

  end
end
