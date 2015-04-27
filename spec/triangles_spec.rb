require('rspec')
require('triangles')

describe('Triad') do
  describe('#triangle?') do
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

    it('returns true if it is a right triangle') do
      expect(Triad.new(3,4,5).triangle?()).to(eq(true))
    end
  end

  describe('#triangle_type') do
    it('returns equilateral for a triangle with all sides equal') do
      expect(Triad.new(1,1,1).triangle_type()).to(eq('equilateral'))
    end

    it('returns isosceles for a triangle with exactly two sides equal') do
      expect(Triad.new(2,2,3).triangle_type()).to(eq('isosceles'))
    end
  end

end
