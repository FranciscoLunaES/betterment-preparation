class Javelin_throw
  attr_accessor :initial_speed, :angle

  def initialize(initial_speed, angle)
    @initial_speed = initial_speed
    @angle = angle
    @rad = from_angle_to_rad
  end

  def max_distance
    (@initial_speed**2 * Math.sin(2 * @rad)) / 9.81
  end

  def max_height
    (@initial_speed**2 * Math.sin(@rad)**2) / (2 * 9.81)
  end

  def to_s
    "The maximum height that the javelin will reach is #{max_height.round} and the maximum range of the javelin #{max_distance.round}"
  end

  private

  def from_angle_to_rad
    @angle / (180 / Math::PI)
  end
end

x = Javelin_throw.new(35, 10)
puts x
