require_relative 'pokemon'

class Pikachu < Pokemon

  def initialize(name)
    super
    @attack_strength = 10
    @gain_to_train = 13
  end

  def fight(opponent)
    super() #dont pass args you received
    # super #pass along every argument you received
    # super(opponent) #pass along only the argument i specified
    opponent.receive_damage(attack_strength)
  end

end