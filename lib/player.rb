class Player
  attr_reader :name, :hp

  DEFAULT_HEALTH = 60

  def initialize(name = "Frosmoth")
    @name = name
    @hp = DEFAULT_HEALTH
  end

  def is_attacked
    @hp -= 10
  end

end