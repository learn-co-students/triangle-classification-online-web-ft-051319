class Triangle
  attr_reader :side1, :side2, :side3, :size
  
  def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @size = side1 + side2 + side3
  end
  
  def kind
    if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side1 + @side3 > @side2) && @size > 0
      return :equilateral if @side1 == @side2 && @side1 == @side3
      return :isosceles if (@side1 == @side2 || @side2 == @side3 || @side1 == @side3) && ((@side1 == @side2 && @side1 == @side3) == false)
      return :scalene if (@side1 == @side2 || @side2 == @side3 || @side1 == @side3) == false
    else
        raise TriangleError
    end
  end
  
  class TriangleError < StandardError

  end
end
