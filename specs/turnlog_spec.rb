require "minitest/autorun"
require "minitest/rg"
require_relative "../src/TurnLog"
require_relative "../src/FighterFactory"

class TestTurnLog < MiniTest::Test
  def setup
    @fighter_factory = FighterFactory.new

    @fighter1 = @fighter_factory.get_random true
    @fighter2 = @fighter_factory.get_random true
    
    @move = @fighter1.get_next_move

    @options = {
      fighter1: @fighter1,
      fighter2: @fighter2,
      move: @move,
      result: true
    }

    @turnlog = TurnLog.new @options
  end

  def test_get_fighter
    assert_equal @fighter1, @turnlog.fighter1
  end

  def test_get_move
    assert_equal @move, @turnlog.move
  end

  def test_get_result
    expected = "successful, hitting for #{@move.damage}" 
    assert_equal expected, @turnlog.result
  end
end