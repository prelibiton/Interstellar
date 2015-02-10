class Numerical

  def initialize(number, x, y)
    load_images
    @number = number
    @x, @y = x, y
  end

  def update(number)
    @number = number
  end

  def draw
    case @number
      when -1
        @numeral_x.draw(@x, @y, 1)
      when 0
        @zero.draw(@x, @y, 1)
      when 1 
        @one.draw(@x, @y, 1)
      when 2
        @two.draw(@x, @y, 1)
      when 3
        @three.draw(@x, @y, 1)
      when 4
        @four.draw(@x, @y, 1)
      when 5
        @five.draw(@x, @y, 1)
      when 6
        @six.draw(@x, @y, 1)
      when 7
        @seven.draw(@x, @y, 1)
      when 8 
        @eight.draw(@x, @y, 1)
      when 9
        @nine.draw(@x, @y, 1)
    end
  end

  private

  def load_images
    @numerical = Gosu::TexturePacker.load_json(
      $window, "media/numerical.json", :precise)
    @zero      = @numerical.frame('numeral0.png')
    @one       = @numerical.frame('numeral1.png')
    @two       = @numerical.frame('numeral2.png')
    @three     = @numerical.frame('numeral3.png')
    @four      = @numerical.frame('numeral4.png')
    @five      = @numerical.frame('numeral5.png')
    @six       = @numerical.frame('numeral6.png')
    @seven     = @numerical.frame('numeral7.png')
    @eigth     = @numerical.frame('numeral8.png')
    @nine      = @numerical.frame('numeral9.png')
    @numeral_x = @numerical.frame('numeralX.png')
  end
  
end
