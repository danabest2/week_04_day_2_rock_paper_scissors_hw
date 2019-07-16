require 'minitest/autorun'
require_relative '../models/rps'

class TestRPSGame < Minitest::Test


 def test_rps__rock_wins_with_scissors
    assert_equal('Player 1 wins with rock!', RPSGame.check_win('rock', 'scissors'))
    assert_equal('Player 2 wins with rock!', RPSGame.check_win('scissors', 'rock'))
  end

  def test_rps__paper_wins_with_rock
    assert_equal('Player 2 wins with paper!', RPSGame.check_win('rock', 'paper'))
    assert_equal('Player 1 wins with paper!', RPSGame.check_win('paper', 'rock'))
  end

  def test_rps__scissors_win_with_paper
    assert_equal('Player 1 wins with scissors!', RPSGame.check_win('scissors', 'paper'))
    assert_equal('Player 2 wins with scissors!', RPSGame.check_win('paper', 'scissors'))
  end

  def test_rps__draw
    assert_equal('It\'s a Draw!', RPSGame.check_win('scissors', 'scissors'))
    assert_equal('It\'s a Draw!', RPSGame.check_win('paper', 'paper'))
    assert_equal('It\'s a Draw!', RPSGame.check_win('rock', 'rock'))
  end

end
