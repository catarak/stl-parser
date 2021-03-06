require_relative "../config/environment"
require 'pry'

class StlParser
  attr_accessor :solid
  attr_reader :path
  def initialize(file_path)
    @path = file_path
  end

  def parse!  
    current_facet = nil
    current_vertices = []
    File.open(self.path, 'r') do |f|
      while line = f.gets
        line = line.strip
        words = line.split(" ")
        case words.first
        when "solid"
          self.solid = Solid.new(words[1])
        when "facet"
          normal = Vector.new(words[2], words[3], words[4])
          current_facet = Facet.new([], normal)
        when "vertex"
          vertex = Vertex.new(words[1], words[2], words[3])
          current_vertices << vertex
        when "endfacet"
          current_facet.vertices = current_vertices.dup
          current_vertices = []
          self.solid.add_facet(current_facet.dup)
        end
      end
    end
  end

  def print_results
    puts "Number of facets: #{self.solid.facets.length}"
    puts "Number of (unique) vertices: #{self.solid.vertices.length}"
  end

  private

end