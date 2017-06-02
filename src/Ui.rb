class Ui
  attr_reader :test_mode, :fighter_factory
  def initialize test_mode, fighter_factory
    @test_mode = test_mode
    @fighter_factory = fighter_factory
  end

  def start
    if not @test_mode
      puts "*************************************"
      puts "* Welcome to Street Fighter Ru...by *"
      puts "*************************************"
    end
  end

  def choose_player
    if not @test_mode
      characters = @fighter_factory.get_readable_characters

      puts
      puts "Choose Your Player!"
      puts
      characters.each_with_index {|character, index| puts "#{index+1}. #{character}" }
      puts

      choice = gets.to_i - 1
      @fighter_factory.get choice, false
    end
  end

  def show_turn turnlog
    if not @test_mode
      puts "#{turnlog.fighter1.name} tries to hit #{turnlog.fighter2.name} with a #{turnlog.move.name}. It was #{turnlog.result}!"

      # sort results for a consistent display
      sorted = [turnlog.fighter1, turnlog.fighter2].sort_by { |fighter| fighter.name }

      puts "#{sorted[0].name}: #{sorted[0].health} health - #{sorted[1].name}: #{sorted[1].health} health"
      puts "----------------------------"
      puts "Press return to continue."
      gets
    end
  end

  def show_opponent fighter
    if not @test_mode
      puts "The CPU chooses #{fighter.name}"
      puts
    end
  end

  def show_winner winner
    if not @test_mode
      puts
      puts "#{winner.name} wins!"
      puts "#{winner.taunt}"
    end
  end
end