class Member
  attr_reader :name, :id


  def initialize(attrs = {})
    @name = attrs[:station_name]
    @id = attrs[:id]
  end
end
