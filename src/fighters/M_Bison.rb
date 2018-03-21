require_relative "../Move"
require_relative "../Fighter"

class M_Bison < Fighter
  def initialize ai
    super ai
    @name = "M. Bison"
    @taunt = "Grovel before me!"

    move1 = Move.new({ name: "Punch", damage: 5, hit_chance: 80 })
    move2 = Move.new({ name: "Scissor Kick", damage: 20, hit_chance: 50 })
    move3 = Move.new({ name: "Psycho Crusher", damage: 60, hit_chance: 30 })

    @moves = [move1, move2, move3]
  end
end
