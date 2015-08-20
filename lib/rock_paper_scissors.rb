class String
  def rock_paper_scissors(opponent)
    if self != 'computer' && opponent != 'computer'
      if self == 'rock'
        return true if opponent == 'scissors'
        return false if opponent == 'paper'
        return 1 if opponent == 'rock'
      elsif self == 'paper'
        return true if opponent == 'rock'
        return false if opponent == 'scissors'
        return 1 if opponent == 'paper'
      elsif self == 'scissors'
        return true if opponent == 'paper'
        return false if opponent == 'rock'
        return 1 if opponent == 'scissors'
      end
    else
      win_condition = rand 3
      return false if win_condition == 0
      return 1 if win_condition == 1
      return true if win_condition == 2
    end
  end
end