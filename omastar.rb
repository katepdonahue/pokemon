# http://bulbapedia.bulbagarden.net/wiki/Vanillite_(Pok%C3%A9mon)

class Vanillite
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state
  attr_reader :birthday

  def initialize(name)
    @name = name
    @hp = rand(10..36)
    @attack = rand(10..50)
    @defense = rand(10..50)
    @speed = rand(5..44)
    @level = 1
    @state = "Vanillite"
    @birthday = Time.now
  end

  def icicle_spear
  end

  def level_up
  end

  def evolve
    if level > 36 && level < 47
      state = "Vanillish"
      need =  47 - level
      puts "Your state is #{state}. You need #{need} more levels to evolve."
    elsif level >= 47
      state = "Vanilluxe"
      puts "Your state is #{state}. You are very distinguished."
    else
      puts "You are not ready to evolve. Your level is #{level} and you need 41 levels to evolve."
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