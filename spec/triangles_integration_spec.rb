require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the triangles path', {:type => :feature}) do
  it('processes user input and returns triangle status and type if applicable') do
    visit('/')
    fill_in('side1', :with => 3)
    fill_in('side2', :with => 4)
    fill_in('side3', :with => 5)
    click_button('Triangulate')
    expect(page).to(have_content('The triad is'))
  end
end
