module Game
  
  #
  # Used as storage for game objects, controlls drawing, updating and so on
  #
  class ObjectController

    [:character, :creeps, :bonuses].each { |p| attr_accessor p }

    #
    # Initiate array of game objects with default values
    #
    def initialize
      @character = nil
      @creeps = []
      @bonuses = []
    end

    #
    # Updating properties of all game objects
    #
    def update
      @character.update
      @creeps.each { |creep| creep.update }
      @bonuses.each { |bonus| bonus.update }
    end

    #
    # Draw all the objects on the screen
    #
    def draw
      @character.draw
      @creeps.each { |creep| creep.draw }
      @bonuses.each { |bonus| bonus.draw }
    end

  end
  
end