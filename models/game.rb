require 'pry-byebug'

class Game

  def initialize()
    @game_states = {
      rock: ['rock', 'paper', 'scissors'],
      paper: ['paper', 'scissors', 'rock'],
      scissors: ['scissors', 'rock', 'paper']
      }
  end

  # Logic based on the 'Rotation' algorithm described at: https://daniel.lawrence.lu/programming/rps/
  def play_game(p1, p2)
    p1 = p1.to_sym

    rotations = 0
    game_array = @game_states[p1]

    while p2 != @game_states[p1][rotations] do
      game_array.rotate()
      rotations += 1
    end

    if rotations == 0
      return "Draw"
    elsif rotations == 1
      return "P2 wins!"
    else
      return "P1 wins!"
    end 
  end

end