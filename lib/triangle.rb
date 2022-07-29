
class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize (a, b ,c)
    @a = a
    @b = b
    @c = c
       
  end
  
  def kind
  if validate_triangle?
    if a==b && b==c && a==c
      :equilateral
    elsif a == b || a== c || b == c
      :isosceles
    else 
      :scalene
    end
  else
      begin
        raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      end
    end
  end


  class TriangleError < StandardError
    # triangle error code
    def message
      puts "Invalid Triangle"
    end
  end

def triangle_inequality?
  a+b>c && b+c>a && a+c>b
end

def validate_triangle?
  [a,b,c].all?(&:positive?) && triangle_inequality?
end

end

