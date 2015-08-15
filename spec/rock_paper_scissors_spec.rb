require('rock_paper_scissors')
require('rspec')

describe('String#rock_paper_scissors') do
  it('returns true when the first player wins') do
    expect('rock'.rock_paper_scissors('scissors')).to(eq(true))
  end
  
  it('returns 1 when there is a tie game') do
    expect('scissors'.rock_paper_scissors('scissors')).to(eq(1))
  end
end