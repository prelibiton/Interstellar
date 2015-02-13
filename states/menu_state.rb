class MenuState < GameState
  include Singleton
  attr_accessor :play_state

  def initialize
    @images = Gosu::TexturePacker.load_json(
      $window, "media/background.json", :precise)
    @logos = Gosu::TexturePacker.load_json(
      $window, "media/logo.json", :precise)
    @background_image = @images.frame('background.png')
    @logo = @logos.frame('logo.png')
    @play_text     = Gosu::Image.from_text(
      $window, "Enter", Gosu.default_font_name, 30)
    @exit_text     = Gosu::Image.from_text(
      $window, "Exit", Gosu.default_font_name, 30)

    @music = Gosu::Song.new($window, "media/ObservingTheStar.ogg")
    @music.play
  
  end

  def update
    if @play_state  
      text = "GAME OVER" 
    else
      text =  ""
    end
    @game_over_text = Gosu::Image.from_text(
      $window, "#{text}", Gosu.default_font_name, 50)
  end

  def draw
    @background_image.draw(1, 1, 1)
    @logo.draw(($window.width - @logo.width) / 2, 
      $window.height / 3 - @logo.height / 4  , 10)
    @game_over_text.draw($window.width / 2  - @game_over_text.width / 2, 
      $window.height / 2  - @game_over_text.height - 100, 10)
    @play_text.draw($window.width / 2 - @play_text.width / 2, 
      $window.height / 2 - @play_text.height + 100, 10)
    @exit_text.draw($window.width / 2 - @exit_text.width / 2, 
      $window.height / 2 - @exit_text.height + 150, 10)
  end

  def button_down(id)
    $window.close if id == Gosu::KbEscape
    
    if id == Gosu::KbReturn
      @music.stop
      @play_state = PlayState.new
      GameState.switch(@play_state)
    end
  end
end
