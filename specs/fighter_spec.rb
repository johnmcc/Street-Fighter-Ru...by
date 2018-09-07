require "minitest/autorun"
require "minitest/rg"
require_relative "../src/fighters/Ken"

class TestFighter < MiniTest::Test
  def setup
    @fighter = Ken.new true
  end

  def test_fighter_name
    assert_equal "Ken", @fighter.name
  end

  def test_fighter_health
    assert_equal 100, @fighter.health
  end

  def test_fighter_taunt
    assert_equal "Get up, it's too early for you to be defeated!!", @fighter.taunt
  end

  def test_random_move
    move = @fighter.get_next_move
    assert @fighter.moves.include? move
  end

  def test_is_dead
    assert_equal false, @fighter.is_dead?
  end

  def test_fighter_change_health
    @fighter.lower_health 100
    assert_equal 0, @fighter.health
  end

  def test_is_dead_when_health_zero
    @fighter.lower_health 100
    assert_equal true, @fighter.is_dead?
  end
end