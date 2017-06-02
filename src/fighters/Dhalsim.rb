require_relative "../Move"
require_relative "../Fighter"

class Dhalsim < Fighter 
  def initialize ai
    super ai
    @name = "Dhalsim"
    @taunt = "I will meditate and then destroy you."
    
    move1 = Move.new({ name: "Extendy Punch", damage: 10, hit_chance: 90 })
    move2 = Move.new({ name: "Fireball", damage: 30, hit_chance: 50 })
    move3 = Move.new({ name: "Yoga Flame", damage: 40, hit_chance: 40 })
        
    @moves = [move1, move2, move3]
  end
end