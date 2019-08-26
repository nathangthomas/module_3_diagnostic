class StationService

  def stations
    get_json("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=tSv9DiMHjCHNHEE7mkoqdopdKcHy6ihFlYwFTTxj&location=80302&fuel_type=all&distance=string&access_days_time=string")
  end

  private
  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    @_conn ||= Faraday.new(url: "https://developer.nrel.gov") do |f|
      f.headers["Authorization"] = ENV['API_KEY']
      f.adapter Faraday.default_adapter
    end
  end
end
