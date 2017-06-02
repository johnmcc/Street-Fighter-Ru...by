require_relative "./move"

class Fighter
  attr_reader :name, :health, :taunt
  attr_accessor :moves

  def initialize ai
    @health = 100
    @ai = ai
  end

  def get_next_move
    @moves.sample
  end

  def lower_health amount
    @health -= amount
    @health = @health < 0 ? 0:@health
  end

  def is_dead?
    @health <= 0
  end

  def apply_move move
    if move.hit_chance >= rand(1..100)
      lower_health move.damage
      return true
    end

    false
  end
end