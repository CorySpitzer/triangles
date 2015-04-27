require('rspec')
require('triangles')

describe('Triad#triangle_test') do
  it('returns true for a triangle with all sides of length 0') do
    triangle = Triad.new(0,0,0)
    expect(triangle.triangle_test()).to(eq(true))
  end

end
