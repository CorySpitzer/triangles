require('rspec')
require('triangles')

describe('triad#triangle_test') do
  it('returns true for a triangle with all sides of length 0') do
    triangle = triad.new(0,0,0)
    expect(triangle.triangle_test()).to(eq(true))
  end

end
