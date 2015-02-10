class Asteroid
  attr_accessor :x, :y , :radius , :size

  MAX_SPEED_X = 4
  MAX_SPEED_Y = 8
  MIN_SPEED_Y = 3
  RANGE = 4000

  def initialize
    load_images
    @asteroid = [@asteroid_01, @asteroid_02, @asteroid_03, @asteroid_04].shuffle.first
    @x = rand(RANGE)
    @y = 0
    @speedx = rand(MAX_SPEED_X * 2) - MAX_SPEED_X
    @speedy = rand(MAX_SPEED_Y - MIN_SPEED_Y) + MIN_SPEED_Y
    @radius = 40
    @size = 1
  end

  def update
    @x += @speedx
    @y += @speedy
  end

  def draw
    @asteroid.draw(@x, @y, 1)
  end

  def done?
    @x < 0 || @x > 2500 || @y < 0 || @y > 2500
  end


  private

  def load_images
    @asteroids = Gosu::TexturePacker.load_json(
      $window, "media/asteroids.json", :precise)
    @asteroid_01 = @asteroids.frame('meteorGrey_big4.png')
    @asteroid_02 = @asteroids.frame('meteorGrey_big2.png')
    @asteroid_03 = @asteroids.frame('meteorBrown_big2.png')
    @asteroid_04 = @asteroids.frame('meteorBrown_big4.png')
  end

  
end
