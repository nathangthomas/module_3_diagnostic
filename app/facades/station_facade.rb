class StationFacade

  def stations
    @_stations ||= stations[0..10].map { |station| Station.new(station)}
  end
  #
  # private
  # def service
  #   @_service ||= StationService.new
  # end
  #
  def stations
    @_stations ||= service.stations
  end
end
