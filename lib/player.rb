class Player
  attr_reader :name, :status
  attr_accessor :hitpoints

  DEFAULT_ATTACK = 10
  DEFAULT_HP = 100

  def initialize(name, hitpoints = DEFAULT_HP)
    @name = name
    @hitpoints = hitpoints
    @status = 'Normal'
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def receive_damage
    @hitpoints -= DEFAULT_ATTACK
  end
end