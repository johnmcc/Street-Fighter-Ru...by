class Move
  attr_reader :name, :damage, :hit_chance
  def initialize options
    @name = options[:name]
    @damage = options[:damage]
    @hit_chance = options[:hit_chance]
  end
end