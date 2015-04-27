require('rspec')
require('triangles')

describe('Triad#triangle?') do
  it('returns true for a triangle with all sides of length 0') do
    expect(Triad.new(0,0,0).triangle?()).to(eq(true))
  end

  it('returns false if one side is zero and any other side is
      not zero') do
    expect(Triad.new(0,0,1).triangle?()).to(eq(false))
  end

  it('returns false if the length of one side is greater than
      the sum of the other two') do
    expect(Triad.new(1,2,4).triangle?()).to(eq(false))
  end

end
