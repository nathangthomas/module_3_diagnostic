class StationFacade

  def fuel_stations
    @_stations ||= stations.map { |station| Station.new(station)}
  end

  private
  def service
    @_service ||= StationService.new
  end

  def stations
    @_stations ||= service.stations
  end
end
