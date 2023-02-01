require 'pry'

class Triangle
  attr_accessor :a, :b, :c
  attr_reader :equilateral, :isosceles, :scalene

  def initialize(a, b, c)
    @@a = a
    @@b = b
    @@c = c
  end
  def kind
    if @@a == 0 and @@b == 0 and @@c == 0
      raise TriangleError
    elsif @@a < 0 or @@b < 0 or @@c < 0
      raise TriangleError
    elsif @@a + @@b <= @@c or @@a + @@c <= @@b or @@b + @@c <= @@a
      raise TriangleError
    end
    if @@a == @@b and @@a == @@c
      return :equilateral
    elsif @@a == @@b or @@a == @@c or @@b == @@c
      return :isosceles
    elsif @@a != @b and @@a != @@c and @@b != @@c
      return :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "triangle error, there are no sides"
    end
  end
end