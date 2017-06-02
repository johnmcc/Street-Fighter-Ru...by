require_relative "./TurnLog"

class Game
  attr_reader :winner
  attr_accessor :fighters
  def initialize ui
    @ui = ui
    @fighters = []
    @winner = nil
  end

  def start
    @ui.start
    
    add_fighters

    while nobody_is_dead? do
      current_fighter = get_next_fighter
      opponent = get_opponent

      if current_fighter.ai
        move = current_fighter.get_next_move
      else
        move = @ui.get_move current_fighter
      end

      hit = opponent.apply_move move

      turnlog = TurnLog.new ({
        fighter1: current_fighter, 
        fighter2: opponent, 
        move: move, 
        result: hit
      })
      @ui.show_turn turnlog
    end

    @winner = get_winner
    @ui.show_winner @winner
  end

  def add_fighters
    if @ui.test_mode
      @fighters << @ui.fighter_factory.get_random(true)
      @fighters << @ui.fighter_factory.get_random(true)
    else
      @fighters << @ui.choose_player
      @fighters << @ui.fighter_factory.get_random(true)

      @ui.show_opponent @fighters.last
    end
  end

  def nobody_is_dead?
    @fighters.none? {|fighter| fighter.is_dead? }
  end

  def get_next_fighter
    @fighters.rotate!.first
  end

  def get_opponent
    @fighters.last
  end

  def get_winner
    @fighters.find{|fighter| fighter.health > 0}
  end
end