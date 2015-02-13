class Explosion

  def animation
    @animation ||= Gosu::Image.load_tiles(
      $window, "media/explosion.png", 128, 128, false)
  end

  def initialize(x, y)
    @x, @y = x, y
    @current_frame = 0
  end

  def update
    @current_frame += 1
  end

  def draw
    return if done?
    image = current_frame
    image.draw(
      @x - image.width / 2 + 3,
      @y - image.height / 2 - 35,
      20)
  end

  def done?
    @done ||= @current_frame == animation.size
  end

  private

  def current_frame
    animation[@current_frame % animation.size]
  end

end
