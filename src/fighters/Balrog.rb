require_relative "../Move"
require_relative "../Fighter"

class Broken < Fighter 
  def initialize ai
    super ai
    @name = "Balrog"
    @taunt = "Get up, you wimp!"

    move1 = Move.new({ name: "Punch", damage: 5, hit_chance: 80 })
    move2 = Move.new({ name: "Hard Punch", damage: 25, hit_chance: 40 })
        
    @moves = [move1, move2]
  end
end