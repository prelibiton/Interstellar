require 'gosu'
require 'singleton'
require 'gosu_texture_packer'
require 'perlin_noise'

require_relative 'states/game_state'
require_relative 'states/menu_state'
require_relative 'states/play_state'
require_relative 'game_window'


$window = GameWindow.new
GameState.switch(MenuState.instance)
$window.show
