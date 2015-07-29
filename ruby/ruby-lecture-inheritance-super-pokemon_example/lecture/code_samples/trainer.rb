class Trainer

  def initialize(name)
    @name = name
    @team = []
  end

  def add_pokemon(pokemon)
    @team << pokemon
  end

  def train_pokemons
    team.each do |pokemon|
      pokemon.train
    end
  end

  def team
    @team
  end

end
