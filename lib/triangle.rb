class Triangle
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
  end
  
  def valid?
    @length + @width <= @height || @height + @width <= @length || @height + @length  <= @width
    
  end
  def kind 
    if @length == nil || @width == nil || @height == nil || @length <= 0 || @width <= 0 || @height <= 0 || valid?
      begin 
      raise TriangleError
      end
    else
      if @length == @height && @length == @width
      :equilateral
    elsif @length == @height || @height == @width || @width == @length
      :isosceles
  else
      :scalene
  end
  end
end

class TriangleError < StandardError
    # triangle error code
  end

end