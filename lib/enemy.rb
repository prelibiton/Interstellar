class Enemy
  attr_accessor :x, :y, :radius, :size

  MAX_SPEED_X = 4
  MAX_SPEED_Y = 6
  MIN_SPEED_Y = 3
  RANGE = 4000

  def initialize(player)
    load_images
    @enemy = [@enemy_01, @enemy_02, @enemy_03, @enemy_04].shuffle.first
    @player = player
    @x = rand(RANGE)
    @y = 0
    @speedx = rand(MAX_SPEED_X * 2) - MAX_SPEED_X
    @speedy = rand(MAX_SPEED_Y - MIN_SPEED_Y) + MIN_SPEED_Y
    @radius = 30
    @size = 1 
  end

  def update
    @x += @speedx
    @y += @speedy
  end

  def draw
    @enemy.draw(@x, @y, 1)
  end

  def done?
    @x < 0 || @x > 2500 || @y < 0 || @y > 2500
  end

  private

  def load_images
    @enemies = Gosu::TexturePacker.load_json(
      $window, "media/enemy.json", :precise)
    @enemy_01  = @enemies.frame('ufoBlue.png')
    @enemy_02  = @enemies.frame('ufoGreen.png')
    @enemy_03  = @enemies.frame('ufoYellow.png')
    @enemy_04  = @enemies.frame('ufoRed.png')  
  end
  
end
