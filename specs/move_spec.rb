require "minitest/autorun"
require "minitest/rg"
require_relative "../src/Move"

class TestMove < MiniTest::Test
  def setup
    @move = Move.new({ name: "Punch", damage: 10, hit_chance: 80 })
  end

  def test_move_name
    assert_equal "Punch", @move.name
  end

  def test_move_damage
    assert_equal 10, @move.damage
  end

  def test_hit_chance
    assert_equal 80, @move.hit_chance
  end
end