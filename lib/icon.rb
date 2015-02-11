class Icon
  attr_accessor 

  def initialize(x, y)
    load_images
    @icon = [@icon_01, @icon_02, @icon_03].shuffle.first
    @x, @y = x, y
  end

  def draw
    @icon.draw(@x, @y, 1)
    @score_icon.draw($window.height + 50, 50, 1)
  end

  private

  def load_images
    @icons = Gosu::TexturePacker.load_json(
      $window, "media/icon_ships.json", :precise)
    @icon_01 = @icons.frame('playerLife2_blue.png')
    @icon_02 = @icons.frame('playerLife2_green.png')
    @icon_03 = @icons.frame('playerLife2_orange.png')

    @score_icon = @icons.frame('star_gold.png')
  end

  
end
