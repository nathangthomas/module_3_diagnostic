class Station
  attr_reader :station_name, :street_address, :fuel_type_code, :distance, :access_days_time


  def initialize(attributes = {})
    @name = attributes[:station_name]
    @address = attributes[:street_address]
    @fuel_type = attributes[:fuel_type_code]
    @distance = attributes[:distance]
    #above attribute isn't right 
    @access_time = attributes[:access_days_time]
  end
end
