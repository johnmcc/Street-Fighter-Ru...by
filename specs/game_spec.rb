require "minitest/autorun"
require "minitest/rg"
require_relative "../src/FighterFactory"
require_relative "../src/Game"
require_relative "../src/Ui"

class GameTest < MiniTest::Test
  def setup
    fighter_factory = FighterFactory.new
    @ui = Ui.new true, fighter_factory

    @ken = Ken.new true
    @blanka = Blanka.new true
  
    @game = Game.new @ui
    @game.fighters = [@ken, @blanka]
  end

  def test_fighters
    assert_equal 2, @game.fighters.count
  end

  def test_game_loop
    @game.start
    assert true, "The game loop should finish"
  end

  def test_get_next_player
    assert_equal @blanka, @game.get_next_fighter
  end

  def test_winner
    @game.start
    assert @game.fighters.include?(@game.winner)
  end
end