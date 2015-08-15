class String
  def rock_paper_scissors(opponent)
    if self == 'rock'
      return true if opponent == 'scissors'
      return false if opponent == 'paper'
      return 1 if opponent == 'rock'
    elsif self == 'paper'
      return true if opponent == 'rock'
      return false if opponent == 'scissors'
      return 1 if opponent == 'paper'
    else
      return true if opponent == 'paper'
      return false if opponent == 'rock'
      return 1 if opponent == 'scissors'
    end
  end
end