require 'pry'

class Triangle
  # write code here
  attr_accessor :kind

  def initialize(side1, side2, side3)

    if (side1*side2*side3 == 0) || side1 >= (side2+side3) || side2 >= (side1+side3) || side3 >= (side1+side2)
        raise TriangleError
    elsif side1 == side2 && side2 == side3

        @kind = :equilateral
    elsif (side1 == side2 || side2 == side3 || side1 == side3)
        @kind = :isosceles
    else
        @kind = :scalene
    end
    # binding.pry
    # triangle_type
  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end

end
