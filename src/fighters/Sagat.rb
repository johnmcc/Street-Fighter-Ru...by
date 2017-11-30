require_relative "../Move"
require_relative "../Fighter"

class Sagat < Fighter
  def initialize ai
    super ai
    @name = "Sagat"
    @taunt = "Ha Ha Ha Victory shall be mine!"

    move1 = Move.new({ name: "Punch", damage: 5, hit_chance: 80 })
    move2 = Move.new({ name: "Tiger UpperCut", damage: 25, hit_chance: 60 })
    move3 = Move.new({ name: "Tiger FireBall", damage: 40, hit_chance: 10 })

    @moves = [move1, move2, move3]
  end
end
