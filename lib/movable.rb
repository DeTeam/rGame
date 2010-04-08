require 'rubygems'
require 'gosu'

module Game

  #
  # Should be included in other classes, realize accelerating, movement and so on
  #
  class Movable

    ACCELERATION_X = 0.5
    ACCELERATION_Y = 0.5
    ACCELERATION_A = 0.1

    ACCELERATION_DOWN_X = 0.95
    ACCELERATION_DOWN_Y = 0.95
    ACCELERATION_DOWN_A = 0.5


    attr_accessor :x, :y, :vel_x, :vel_y, :vel_a, :angle

    #
    # Setup instance variables
    #
    def initialize
      @x = @y = @vel_x = @vel_y = @vel_a = @angle = 0.0
    end

    #
    # Increase movement speed of object
    # Sign used to show weather change angle in clockwise or not
    #
    def accelerate(sign = 0)
      @vel_x += Gosu::offset_x(@angle, ACCELERATION_X)
      @vel_y += Gosu::offset_y(@angle, ACCELERATION_Y)
      if sign != 0
        @vel_a +=  sign > 0 ? ACCELERATION_A : -ACCELERATION_A
      end
      
    end


    def move
      [@x + @vel_x, @y + @vel_y]
    end

    #
    # Move proccess itself, do change coordinates of object, some acceleration down
    #
    def move!
      @x += @vel_x
      @y += @vel_y
      @angle += @vel_a

      @vel_x *= ACCELERATION_DOWN_X
      @vel_y *= ACCELERATION_DOWN_Y
      @vel_a *= ACCELERATION_DOWN_A
    end

    #
    # Makes same thing as move!
    #
    def update
      move!
    end

  end

end
