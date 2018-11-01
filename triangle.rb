def triangle(a, b, c)
  if (a <= 0 && b <= 0 && c <= 0) || (a + b <= c) || (a + c <= b) || (b + c <= a)
    raise TriangleError
  else
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
