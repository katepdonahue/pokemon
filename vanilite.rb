# http://bulbapedia.bulbagarden.net/wiki/Vanillite_(Pok%C3%A9mon)

class Vanillite
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state, :abilities, :exp
  attr_reader :birthday, :type, :catch_rate, :entry

  def initialize(name)
    @name = name
    @attack = rand(10..50)
    @defense = rand(10..50)
    @speed = rand(5..44)
    @level = 1
    @state = "Vanillite"
    @birthday = Time.now
    @type = "Ice"
    @abilities = ["Icicle Spear"]
    @catch_rate = 0.333
    @entry = "Vanillite, the Fresh Snow Pokémon. Vanillite's breath is more than fifty degrees below zero when it exhales, creating ice crystals and causing it to snow."
    @hp = 36
    @exp = 61
  end

  def level_up
    if exp > level**3
      level += 1
    end
  end

  def gain_exp new_exp
    exp += new_exp
  end

  def say_name
    "#{state}!"
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