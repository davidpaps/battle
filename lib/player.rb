class Player
  attr_reader :name, :hitpoints, :status
  def initialize(name)
    @name = name
    @hitpoints = 100
    @status = 'Normal'
  end

  def attack(opponent)
    opponent.hitpoints -= 10 
  end
end