# http://bulbapedia.bulbagarden.net/wiki/Diglett

class Diglett
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state
  attr_reader :birthday

  def initialize(name)
    @name = name
    @hp = rand(1..10)
    @attack = rand(5..55)
    @defense = rand(5..25)
    @speed = rand(50..95)
    @level = 1
    @state = "Diglett"
    @birthday = Time.now
  end

  def scratch
  end

  def sand_attack
  end

  def level_up
  end

  def evolve
    if level > 26
      state = "Dugtrio"
      puts "Your state is #{state}. You are very distinguished."
    else
      puts "You are not ready to evolve. Your level is #{level} and you need 26 levels to evolve."
    end
  end

  def show_stats
    puts "Name is: #{name}"
    puts "Hit Points are: #{hp}"
    puts "Attack is: #{attack}"
    puts "Defense is: #{defense}"
    puts "Speed is: #{speed}"
    puts "Level is: #{level}"
    puts "State is: #{state}"
    puts "Age is: #{birthday}"
  end
end