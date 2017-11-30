require_relative "../Move"
require_relative "../Fighter"

class Sagat < Fighter
  def initialize ai
    super ai
    @name = "Sagat"
    @taunt = "You are not a warrior, you are a rookie!"

    move1 = Move.new({ name: "Punch", damage: 5, hit_chance: 80 })
    move2 = Move.new({ name: "Tiger Uppercut", damage: 20, hit_chance: 50 })
    move3 = Move.new({ name: "Tiger Genocide", damage: 80, hit_chance: 5 })

    @moves = [move1, move2, move3]
  end
end
