require "minitest/autorun"
require "minitest/rg"

require_relative "../src/FighterFactory"

class TestFighterFactory < MiniTest::Test
  def setup
    @factory = FighterFactory.new
  end

  def test_factory_has_fighters
    assert @factory.fighters.length > 0
  end

  def test_get_fighter
    fighter = @factory.get 0, true
    assert_equal Fighter, fighter.class.superclass
  end

  def test_get_random_fighter
    fighter = @factory.get_random true
    assert_equal Fighter, fighter.class.superclass
  end
end