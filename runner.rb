require_relative "src/Game"
require_relative "src/Ui"
require_relative "src/FighterFactory"

fighter_factory = FighterFactory.new
ui = Ui.new false, fighter_factory
game = Game.new ui

game.start