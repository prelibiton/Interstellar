class Laser
  attr_accessor :x, :y, :radius, :size

  def initialize(source_x, source_y, target_x, target_y, degrees)
    @x, @y = source_x, source_y
    @target_x, @target_y = target_x, target_y
    @degrees = degrees
    @radius = 30
    @size = 1
    load_images
  end

  def draw
    case @degrees
      when -45 then @laser_45.draw(@x, @y, 1)
      when 0   then @laser_top.draw(@x, @y, 1)
      when 45  then @laser45.draw(@x, @y, 1)
      when 90  then @laser_left.draw(@x, @y, 1)
      when 135 then @laser_135.draw(@x, @y, 1)
      when 180 then @laser_down.draw(@x, @y, 1)
      when 225 then @laser225.draw(@x, @y, 1)
      when 270 then @laser_right.draw(@x, @y, 1)
    end
  end

  def update
    unless done?
     case @degrees
          when -45
            @x -= 25
            @y -= 25
          when 0   
            @x += 0
            @y -= 25
          when 45
            @x += 25
            @y -= 25
          when 90
            @x += 25
            @y -= 0
          when 135
            @x += 25
            @y += 25
          when 180
            @x -= 0
            @y += 25
          when 225
            @x -= 25
            @y += 25
          when 270 
            @x -= 25
            @y += 0
      end
    end
  end

  def collision?(other)
    Gosu::distance(@x, @y, other.x, other.y) < @radius * @size + other.radius * other.size
  end

  def done?
     @x == @target_x && @y == @target_y
  end

  private

  def load_images
    @laser_units = Gosu::TexturePacker.load_json(
      $window, "media/laser_units.json", :precise)
    @laser_right = Gosu::TexturePacker.load_json(
      $window, "media/laser_right.json", :precise)  

    case @degrees
      when 0 
        @laser_top = @laser_units.frame('laserBlue01.png')
      when 90  
        @laser_left = @laser_right.frame('laserBlue01 - right.png')  
      when 270 
        @laser_right = @laser_units.frame('laserBlue01 - left.png')
      when 180 
        @laser_down = @laser_units.frame('laserBlue01 - down.png')
      when -45 
       @laser_45 = @laser_units.frame('laser_45.png') 
      when 135 
       @laser_135 = @laser_units.frame('laser135.png')
      when 45 
       @laser45 = @laser_units.frame('laser45.png')
      when 225 
       @laser225 = @laser_units.frame('laser225.png')
    end
  end
 
end
