# Require all fighters
Dir[File.expand_path(File.dirname(__FILE__)) + '/../src/fighters/*.rb'].each {|file| require file }

class FighterFactory
  attr_reader :fighters
  def initialize
    @fighters = []

    # Set up an array with all the fighter classes, based on the file name
    files = Dir[File.expand_path(File.dirname(__FILE__)) + '/../src/fighters/*.rb']
    files.each do |file|
      @fighters << Module.const_get(file.split("/").last.split(".").first)
    end
  end

  def get choice, ai
    (@fighters.delete_at choice).new ai
  end

  def get_random ai
    (@fighters.delete @fighters.sample).new ai
  end

  def get_readable_characters
    @fighters.map {|fighter| fighter.to_s.split(/(?=[A-Z])/).join(" ")}
  end
end