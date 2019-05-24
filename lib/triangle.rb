class Triangle

  attr_accessor :side_1, :side_2, :side_3

  @@all=[]

  def initialize(a,b,c)
    @side_1=a
    @side_2=b
    @side_3=c
    @@all=[@side_1,@side_2,@side_3].sort
  end

  def kind
    if @@all.any?(0) || @@all[0]+@@all[1] <= @@all[2]
      raise TriangleError
    elsif @@all.uniq.count==1
      :equilateral
    elsif @@all[0]==@@all[1] || @@all[1]==@@all[2]
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError

  end

end
