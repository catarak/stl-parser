class Vertex
  attr_accessor :x, :y, :z
  def initialize(vx, vy, vz)
    @x = vx
    @y = vy
    @z = vz
  end

  def ==(vertex)
    vertex.x == self.x && vertex.y == self.y && vertex.z == self.z
  end
end