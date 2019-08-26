class Station
  attr_reader :name, :address, :fuel_types, :distance, :access_time


  def initialize(attributes = {})
    @name = attributes[:name]
    @address = attributes[:address]
    @fuel_types = attributes[:fuel_types]
    @distance = attributes[:distance]
    @access_time = attributes[:access_time]
  end
end
