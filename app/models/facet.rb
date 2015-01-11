class Facet
  attr_accessor :vertices, :normal
  def initialize(vertices = [], normal = nil)
    @vertices = vertices
    @normal = normal
    #throw an exception if normal is not a vector
    #and if vertces is not an array of length three of vertices
  end

  def ==(facet)
    facet.normal == self.normal && vertices_equal?(facet.vertices)
  end

  private

    def vertices_equal?(vertices)
      vertices.all? do |vertex|
        self.vertices.include?(vertex)
      end
    end

end