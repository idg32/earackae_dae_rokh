require_relative "rule-set.rb"
require_relative "classes_set.rb"

class New_Enemy
    attr_accessor :name, :race, :_class, :description

    def initialize(name,race,_class)
        @name = name
        @race = race
        @_class = Classes_Enemy_Sets.new(_class)
        eval(_class)
    end

    def rogue
        puts("ARGH. WHAT BE SPOTTED OVER IN THIS GROULLE?")
        @description = "A SCALYWAG OF A BEING. DRAPED IN ROBES, AND A FEATHER OF A BLADE DREW."
    end

    def warlock
        puts("ALRIGHT, I SAID I WOULD WIND UP HERE ONE WAY OR ANOTHER.")
        @description = "A DRUIG BEING, BROOTING AND FRUTHING. BEARING A MARK OF A FELL ONE."
    end

    def wizard
        puts("BY SUNDERED YON LIGHT'S DAWN SHALL YOU ABISMALLY OBEY ME.")
        @description = "AN UNKNOWN INFLUENCE SEEMS TO SURROUND THIS PERSON'S AURA. WIELDING WAND, NEITHER STAFF, BUT A DRAWN BOW."
    end

end