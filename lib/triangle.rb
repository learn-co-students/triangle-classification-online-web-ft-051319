# lib/triangle.rb

class Triangle
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    sides = [one, two, three]
    if sides.any? {|side| side <= 0} == true || (one + two <= three || one + three <= two || two + three <= one)
    raise TriangleError
    elsif
      one == two && two == three
      :equilateral
    elsif
      one == two || one == three || two == three
      :isosceles
    else
      !(one == two || one == three || two == three)
      :scalene
    end
  end


  class TriangleError < StandardError
  end
end
