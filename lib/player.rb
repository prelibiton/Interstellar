class Player
  def initialize(window)
    @image = Gosu::Image.new(window, "images/topdownfighter_normal.png", false)
    @x = @y =  0.0
    @score = 0
    @speed = 1.5
  end

  def position(x, y)
    @x = x
    @y = y
  end

  def speed
    @speed
  end

  def move(incx)
    @x += incx
  end

  def draw
    @image.draw_rot(@x, @y, 1, 1)
  end

end