require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload 'lib/*.rb'


get('/') do
  erb(:index)
end

get('/triangles') do
  @side1 = params.fetch('side1').to_f()
  @side2 = params.fetch('side2').to_f()
  @side3 = params.fetch('side3').to_f()
  @triad = Triad.new(@side1,@side2,@side3)
  if @triad.triangle?()
    @result = @triad.triangle_type()
  else
    @result = "not a triangle!"
  end

  erb(:triangles)
end
