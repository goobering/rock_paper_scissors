require 'Minitest/autorun'
require 'Minitest/rg'

require_relative '../models/game.rb'

class TestRockPaperScissors < Minitest::Test

def setup()
  @test_game = Game.new()
end

def test_rock_rock()
  assert_equal("Draw", @test_game.play_game('rock', 'rock'))
end

def test_rock_paper()
  assert_equal("P2 wins!", @test_game.play_game('rock', 'paper'))
end

def test_rock_scissors()
  assert_equal("P1 wins!", @test_game.play_game('rock', 'scissors'))
end

def test_scissors_scissors()
  assert_equal("Draw", @test_game.play_game('scissors', 'scissors'))
end

def test_scissors_rock()
  assert_equal("P2 wins!", @test_game.play_game('scissors', 'rock'))
end

def test_scissors_paper()
  assert_equal("P1 wins!", @test_game.play_game('scissors', 'paper'))
end

def test_paper_paper()
  assert_equal("Draw", @test_game.play_game('paper', 'paper'))
end

def test_paper_scissors()
  assert_equal("P2 wins!", @test_game.play_game('paper', 'scissors'))
end

def test_paper_rock()
  assert_equal("P1 wins!", @test_game.play_game('paper', 'rock'))
end

end