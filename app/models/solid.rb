class Solid
  attr_accessor :name
  attr_reader :facets, :vertices
  def initialize(name)
    @name = name
    @vertices = []
    @facets = []
  end

  def add_facet(facet)
    self.facets << facet unless self.facets.include?(facet)
    facet.vertices.each do |vertex|
      self.vertices << vertex unless self.vertices.include?(vertex)
    end
  end
end