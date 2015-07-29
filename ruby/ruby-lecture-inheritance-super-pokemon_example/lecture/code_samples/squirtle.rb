require_relative 'pokemon'

class Squirtle < Pokemon

  def initialize(name)
    super
    @attack_strength = 50
    @gain_to_train = 7
  end

end