require 'rubygems'
require 'gosu'

$:.unshift 'lib'

require 'key_controller'
require 'object_controller'

include Gosu
 
#
# Used to display debug stuff in top left corner
#
class Debug < Gosu::Font
  attr_accessor :text

  def say text
    @text = " - Debug: #{text}"
  end
end


#
# Main window class
#
class MainWindow < Gosu::Window
  include Game::KeyController

  # Keys used in Key Controller
  USED_KEYS = [
    KbA, KbS, KbD, KbW, KbEscape
  ]
  
  def initialize
    super(640, 480, false)
    @object_controller = Game::ObjectController.new
    @debug = Debug.new(self, Gosu::default_font_name, 20)

    self.caption = "rGame"
  end

  def update
    USED_KEYS.each { |key| key_controll(key) if button_down? key }
    #@object_controller.update
  end

  def draw
    @debug.draw(@debug.text, 10,10, 2, 1.0, 1.0, 0xffffff00)
    #@object_controller.draw
  end

end

$window = MainWindow.new
$window.show