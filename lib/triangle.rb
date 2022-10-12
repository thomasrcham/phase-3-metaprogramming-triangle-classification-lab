class Triangle
  attr_accessor :leng1, :leng2, :leng3

  def initialize(leng1, leng2, leng3)
    @leng1 = leng1
    @leng2 = leng2
    @leng3 = leng3
  end

  def kind
    if leng1 > 0 && leng2 > 0 && leng3 > 0
      if leng1 + leng2 > leng3 || leng1 + leng3 > leng2 || leng2 + leng3 > leng1
        if leng1 == leng2 && leng1 == leng3
          :equilateral
        elsif leng1 == leng2 || leng1 == leng3 || leng2 == leng3
          :isosceles
        else
          :scalene
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end

Triangle.new(0, 0, 0).kind
