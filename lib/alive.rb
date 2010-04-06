require 'screen_object'

module Game

  #
  # Screen object with HitPoints. Can be damaged, healed. Can check full_hp
  #
  class Alive < ScreenObject

    attr_reader :hp

    MAX_HITPOINT = 100

    #
    # Screen object inializating with hp
    #
    def initialize hp, *params
      @hp = hp
      super(params)      
    end

    #
    # Making some heal
    #
    def heal hp
      @hp += hp
      @hp = @hp > MAX_HITPOINT  ? MAX_HITPOINT : @hp
    end

    #
    # Damaging our person
    #
    def damage hp
      @hp -= hp
      @hp = @hp < 0 ? 0 : @hp
    end

    #
    # Say weather hitpoints are full
    #
    def full_hp?
      return @hp == MAX_HITPOINT
    end

  end

end