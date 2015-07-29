class Pokemon
  
  attr_accessor :health, :xposition, :yposition, :attack_strength, :name, :gain_to_train

  def initialize(name)
    @name = name
    @xposition = 0
    @yposition = -10
    @health = 0
  end

  def fight
    # dont pass args
    @health += 25 if positive_x?
  end

  def whoami?
    puts "I am a #{self.class}"
  end

  def move
    @x += 10
  end

  def train
    @attack_strength = @attack_strength + @gain_to_train
  end

private
  def positive_x?
    xposition > 0
  end

end