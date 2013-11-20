# http://bulbapedia.bulbagarden.net/wiki/Litwick_(Pok%C3%A9mon)

class Litwick
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state, :abilities, :exp
  attr_reader :birthday, :type, :catch_rate, :entry

  def initialize(name)
    @name = name
    @attack = rand(5..30)
    @defense = rand(5..55)
    @speed = rand(1..20)
    @level = 1
    @state = "Litwick"
    @birthday = Time.now
    @type = ["Ghost", "Fire"]
    @abilities = ["Ember", "Astonish"]
    @catch_rate = 0.248
    @entry = "Litwick, the Candle Pokémon. Litwick appear to be helping to guide the way of people by illuminating areas that are darkened, but in reality they are actually leading them to the Ghost World. They feed off the life energy of people and Pokémon, and use it as fuel for the flames on their heads."
    @hp = 50
    @exp = 55
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
    if level > 40 && level < 100
      state = "Lampent"
      need =  100 - level
      puts "Your state is #{state}. You need #{need} more levels to evolve."
    elsif level >= 100
      state = "Chandelure"
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







