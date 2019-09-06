class MemberFacade

  def members
    conn = Faraday.new(url:"http://westerosapi.herokuapp.com") do |faraday|
      faraday.params["api_key"] = ENV["API_KEY"]
      faraday.adapter Faraday.default_adapter
    end

      response = conn.get("http://westerosapi.herokuapp.com/api/v1/house/stark?")
      response_data = JSON.parse(response.body, symbolize_names: true)
      Member.new(response_data[:data][0][:attributes][:members])
      binding.pry
  end
  #digging
end

#       binding.pry
#     # Member.new(response_data)
#   end
# end


#        get_json(/api/v1/house/stark?)
