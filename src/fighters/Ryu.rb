require_relative "../Move"
require_relative "../Fighter"

class Ryu < Fighter
  def initialize ai
    super ai
    @name = "Ryu"
    @taunt = "I walk the path of the true warrior!"

    move1 = Move.new({ name: "Punch", damage: 5, hit_chance: 80 })
    move2 = Move.new({ name: "Fireball", damage: 20, hit_chance: 50 })
    move3 = Move.new({ name: "Dragon Uppercut", damage: 40, hit_chance: 30 })

    @moves = [move1, move2, move3]
  end
end
