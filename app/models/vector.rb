class Vector
  attr_accessor :x, :y, :z
  def initialize(vx, vy, vz)
    @x = vx
    @y = vy
    @z = vz
  end

  def ==(vector)
    vector.x == self.x && vector.y == self.y && vector.z == self.z
  end
end