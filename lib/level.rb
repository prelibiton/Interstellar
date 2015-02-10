class Level
  attr_accessor :level, :spawn_rate
  FIRST_LEVEL_SPAWN  = 100
  SECOND_LEVEL_SPAWN = 75
  THIRD_LEVEL_SPAWN = 50
  FOURTH_LEVEL_SPAWN = 25

  def initialize(player)
    @level = 1
    @player = player
    @spawn_rate = FIRST_LEVEL_SPAWN
  end

  def update
    case @player.score
      when 11..20
        @level = 2
        @spawn_rate = SECOND_LEVEL_SPAWN
      when 21..35
        @level = 3
        @spawn_rate = THIRD_LEVEL_SPAWN
      when 36..1.0 / 0.0
        @level = 4
        @spawn_rate = FOURTH_LEVEL_SPAWN
    end
  end
  
end
