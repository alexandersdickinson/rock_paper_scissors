require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock, paper, scissors path', {:type => :feature}) do
  it('processes user selections for two users and returns the winner') do
    visit('/')
    choose('rock')
    click_button('Submit')
    choose('paper')
    click_button('Submit')
    expect(page).to(have_content("Player Two Wins!"))
  end
end