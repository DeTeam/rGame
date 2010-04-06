module Game

  #
  # Used to handle key pressing
  #
  module KeyController
    include Gosu
    
    #
    # Used to hadle keys. Example:
    # [KbA, KbS, KbD, KbW].each { |key| key_controll(key) }
    #
    def key_controll(key)
      case key
      when KbA
        pressed 1
      when KbS
        pressed 2
      when KbD
        pressed 3
      when KbW
        pressed 4
      when KbEscape
        close
      else
        pressed "Unknown key"
      end
    end

    #
    # Some debug stuff
    #
    def pressed what = ""
      @debug.say " -- Pressed: '#{what}'"
    end

  end

end