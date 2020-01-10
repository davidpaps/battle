class Game 

    attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(receiver)
    @players[receiver-1].receive_damage
  end

  def player_hp(player)
    @players[player-1].hitpoints
  end

  def player_name(player)
    @players[player-1].name
  end

end