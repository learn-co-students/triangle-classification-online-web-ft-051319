class Triangle
  

  def initialize(side1, side2, side3)
    @sides = []
    @sides << side1 << side2 << side3
  end


  def valid_triangle?
    sides_one_two = @sides[0] + @sides[1]
    sides_one_three = @sides[0] + @sides[2]
    sides_two_three = @sides[1] + @sides[2]

    if @sides.all? {|side| side > 0}
      if (sides_one_two > @sides[2]) && (sides_one_three > @sides[1]) && (sides_two_three > @sides[0]) #triangle inequality
        true
      end
    else
      false
    end

  end

  def kind
    if valid_triangle?
      case @sides.uniq.count 
      when 1 #all sides equal 
        :equilateral
      when 2 #2 sides equal 
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    "Invalid dimensions for a triangle."
  end

end
