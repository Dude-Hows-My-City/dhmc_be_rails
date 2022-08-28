class UrbanArea

  attr_reader :name

  def initialize(data)
    @name = data[:name].downcase
  end
end
