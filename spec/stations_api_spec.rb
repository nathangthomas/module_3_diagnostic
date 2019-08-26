require 'rails_helper'

describe StationService do
  context "instance methods" do
    context "stations" do
      it "returns fuel stations data" do
        stations = subject.stations


        expect(stations).to be_a Array
        expect(stations[0]).to be_a Hash
        expect(stations.count).to eq(10)
        expect(stations[0]).to have_key :name
        expect(stations[0]).to have_key :address
        expect(stations[0]).to have_key :fuel_type
        expect(stations[0]).to have_key :distance
        expect(stations[0]).to have_key :access_time
      end
    end
  end
end
