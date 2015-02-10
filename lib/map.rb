class Map
  MAP_WIDTH = 20 
  MAP_HEIGHT = 20 
  TILE_SIZE = 128

  def initialize
    load_tiles
    @map = generate_map 
  end

  def draw(camera)
    @map.each do |x, row|
      row.each do |y, val|
        tile = @map[x][y]
        map_x = x * TILE_SIZE
        map_y = y * TILE_SIZE
        if camera.can_view?(map_x, map_y, tile)
          tile.draw(map_x, map_y, 0)
        end
      end
    end
  end
    
  private

  def load_tiles
    @space_tile1 = Gosu::Image.new(
      $window, "media/space_tile1.png", true)
    @space_tile2 = Gosu::Image.new(
      $window, "media/space_tile2.png", true)
  end

  def generate_map
    noises = Perlin::Noise.new(2)
    contrast = Perlin::Curve.contrast(
      Perlin::Curve::CUBIC, 2)
    map = {}
    MAP_WIDTH.times do |x|
      map[x] = {}
      MAP_HEIGHT.times do |y|
        n = noises[x * 0.1, y * 0.1]
        n = contrast.call(n)
        map[x][y] = choose_tile(n)
      end
    end
    map
  end

 def choose_tile(val)
    case val
    when 0.0..0.5 # 50% chance
      @space_tile1
    else
      @space_tile2
    end

 end
end
