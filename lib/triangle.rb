class Triangle
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    a, b, c = [@first, @second, @third].sort

    if a <= 0 || a + b <= c
      begin
        raise TriangleError
      end
    elsif a == c
      :equilateral
    elsif a == b || b == c
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Invalid Triangle"
    end
  end
end

#  t1 = Triangle.new(0, 0, 0)
#  t1.kind