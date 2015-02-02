module Engine
  class Laser 

    def initialize(x, y)
      super()

      @img = Gosu::Image.new(self, "images/laser.png", false)
      @x = x
      @y = y
    end

    def update
      @y -= 8
    end

  end
end
