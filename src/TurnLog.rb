class TurnLog
  attr_reader :fighter1, :fighter2, :move, :result
  def initialize options
    @fighter1 = options[:fighter1]
    @fighter2 = options[:fighter2]
    @move = options[:move]
    @result = prepare options[:result]
  end

  def prepare result
    result ? "successful, hitting for #{@move.damage}" : "unsuccessful"
  end
end