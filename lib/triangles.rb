class Triad

  define_method(:initialize) do |side1,side2,side3|
    @sorted_sides = [side1, side2, side3].sort()
    @shortest_side = @sorted_sides.at(0)
    @mid_side = @sorted_sides.at(1)
    @longest_side = @sorted_sides.at(2)
  end

  define_method(:triangle?) do
    if @shortest_side == @longest_side || (@shortest_side + @mid_side) > @longest_side
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
    if @shortest_side == @longest_side
      "equilateral"
    elsif (@shortest_side == @mid_side or @mid_side == @longest_side)
      "isosceles"
    else
      "scalene"
    end
  end
end
