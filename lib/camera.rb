class Camera
  attr_accessor :x, :y

  def initialize(target)
    @target = target
    @x, @y = target.x, target.y
  end

  def can_view?(x, y, obj)
    x0, x1, y0, y1 = viewport
   (x0 - obj.width..x1).include?(x) &&
     (y0 - obj.height..y1).include?(y)
  end

  def update
    @x += @target.speed if @x < @target.x - $window.width / 4
    @x -= @target.speed if @x > @target.x + $window.width / 4
    @y += @target.speed if @y < @target.y - $window.height / 4
    @y -= @target.speed if @y > @target.y + $window.height / 4
  end

  private

  def viewport
    x0 = @x - ($window.width / 2)   
    x1 = @x + ($window.width / 2)  
    y0 = @y - ($window.height / 2) 
    y1 = @y + ($window.height / 2) 
    [x0, x1, y0, y1]
  end
end
