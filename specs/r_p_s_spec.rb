require 'minitest/autorun'
require 'minitest/rg'

require_relative  '../models/r_p_s.rb'

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new('rock', 'scissors')
    @game2 = Game.new('scissors', 'paper')
    @game3 = Game.new('rock', 'paper')
    @game4 = Game.new('rock', 'rock')

  end

  def test_who_won_rock()
    assert_equal('player 1 wins', @game1.who_won())
  end

  def test_who_won_scissors()
    assert_equal('player 1 wins', @game2.who_won())
  end

  def test_who_won_paper()
    assert_equal('player 2 wins', @game3.who_won())
  end

  def test_who_won_draw()
    assert_equal('it is a draw', @game4.who_won())
  end

end