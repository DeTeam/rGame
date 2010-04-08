require 'extensions'

module Game
  
  #
  # Basic class for the game map, background
  #
  class MapObject

    attr_reader :x, :y

    #
    # Initiate background map
    #
    def initialize window, path, tileable = false
      @image = Gosu::Image.new window, path, tileable
      @x = @y = 0.0
    end

    #
    # Update screen position(scrolling)
    #
    def move dx, dy
      @x += dx
      @y += dy
      [@x, @y]
    end

    #
    # Same as move, alias
    #
    def update
      move
    end

  end

end