class Triad

  define_method(:initialize) do |side1,side2,side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle_test) do
    true
  end

end
