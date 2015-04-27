class Triad

  define_method(:initialize) do |side1,side2,side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sorted_sides = [side1, side2, side3].sort()
  end

  define_method(:triangle?) do
    shortest_side = @sorted_sides.at(0)
    mid_side = @sorted_sides.at(1)
    longest_side = @sorted_sides.at(2)
    # not((shortest_side == 0) and (shortest_side != longest_side))
    if shortest_side == longest_side || (shortest_side + mid_side) > longest_side
      true
    else
      false
    end
  end

end
