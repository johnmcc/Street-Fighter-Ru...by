require_relative "../Move"
require_relative "../Fighter"

class ChunLi < Fighter 
  def initialize ai
    super ai
    @name = "Chun Li"
    @taunt = "There is no chance for you to beat me! Challenge someone else!"

    move1 = Move.new({ name: "Kick", damage: 10, hit_chance: 70 })
    move2 = Move.new({ name: "Lightning Leg", damage: 30, hit_chance: 50 })
    move3 = Move.new({ name: "Spinning Bird Kick!", damage: 35, hit_chance: 40 })
        
    @moves = [move1, move2, move3]
  end
end