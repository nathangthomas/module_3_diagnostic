require 'rails_helper'

describe StationService do
  context "instance methods" do
    context "stations" do
      it "returns fuel stations data" do
        test_stations = subject.stations[:fuel_stations]
        expect(test_stations).to be_a Array
        expect(test_stations.count).to eq(10)
        expect(test_stations[0]).to have_key :station_name
        expect(test_stations[0]).to have_key :street_address
        expect(test_stations[0]).to have_key :fuel_type_code
        expect(test_stations[0]).to have_key :distance
        expect(test_stations[0]).to have_key :access_days_time
      end
    end
  end
end
 
