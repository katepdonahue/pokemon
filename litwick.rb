# http://bulbapedia.bulbagarden.net/wiki/Litwick_(Pok%C3%A9mon)

class Litwick
  attr_accessor :name, :hp, :attack, :defense, :speed, :level, :state
  attr_reader :birthday

  def initialize(name)
    @name = name
    @hp = rand(25..50)
    @attack = rand(5..30)
    @defense = rand(5..55)
    @speed = rand(1..20)
    @level = 1
    @state = "Litwick"
    @birthday = Time.now
  end

  def ember
  end

  def astonish
  end

  def level_up
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


litwick1 = Litwick.new("Sarah")

litwick1.show_stats


puts litwick1.evolve






