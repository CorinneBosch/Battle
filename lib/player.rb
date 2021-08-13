class Player
  attr_reader :name, :hp

  DEFAULT_HEALTH = 60

  def initialize(name = "Frosmoth", hp=DEFAULT_HEALTH)
    @name = name
    @hp = hp
  end
end