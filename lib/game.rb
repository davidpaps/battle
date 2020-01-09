class Game 

    attr_reader :players
    
  def initialize(player_1, player_2)
    @players = { player_1: player_1, player_2: player_2 } 
  end

  def attack(receiver)
    @players[receiver].receive_damage
  end

  def player_hp(player)
    @players[player].hitpoints
  end

  def player_name(player)
    @players[player].name
  end

end