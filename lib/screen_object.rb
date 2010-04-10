require 'movable'

module Game

  #
  # Used to display object on screen(load image and so on)
  #
  class ScreenObject < Movable

    attr_accessor :image


    #
    # Super method and image initialization
    #
    def initialize window, path, tileable = false
      super
      @image = Gosu::Image.new(window, path, tileable)
    end

    #
    # Draw image in a right place
    #
    def draw(x = 0, y = 0)
      x ||= @x
      y ||= @y
      @image.draw_rot x, y, 1, @angle
    end

  end
  
end