class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene, :one, :two, :three 
  
  def initialize(one, two, three)
    @one = one
    @two = two 
    @three = three
  end 
  
  def kind
    
    if (one == "0" || two == "0" || three == "0")
    raise TriangleError 
    
    elsif (one + two <= three) || (one + three <= two) || (two + three <= one) 
    raise TriangleError 
    
  else 
    if (one == two) && (one == three)
      :equilateral 
      
      elsif ((one == two) && (one != three) && (two != three)) || ((two == three) && (two != one) && (three != one)) || ((one == three))
      :isosceles 
      
    else ((one != two) || (two != three) || (three != one))
      :scalene 
    end 
  end 
end
    
    

  
  class TriangleError < StandardError
  end 
end
