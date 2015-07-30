class Car
  def initialize(speed, comfort)
    @rating = speed * comfort
  end

  def rating
    @rating
  end
end

puts Car.new(4, 5).rating