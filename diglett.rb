# http://bulbapedia.bulbagarden.net/wiki/Diglett

class Diglett
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state, :abilities, :exp
  attr_reader :birthday, :type, :catch_rate, :entry

  def initialize(name)
    @name = name
    @attack = rand(5..55)
    @defense = rand(5..25)
    @speed = rand(50..95)
    @level = 1
    @state = "Diglett"
    @birthday = Time.now
    @type = "Ground"
    @abilities = ["Scratch", "Sand Attack"]
    @catch_rate = 0.333
    @entry = "Diglett. The movement of these Ground Pokémon can be easily detected by their tracks of upturned earth."
    @hp = 10
    @exp = 53
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
    puts entry
  end
end