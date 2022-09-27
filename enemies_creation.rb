require_relative "rule-set.rb"
require_relative "classes_set.rb"

class New_Enemy
    attr_accessor :name, :race, :_class

    def initialize(name,race,_class)
        @name = name
        @race = race
        @_class = Classes_Enemy_Sets.new(_class)
        eval(_class)
    end

    def rogue
        puts("ARGH. WHAT BE SPOTTED OVER IN THIS GROULLE?")
    end

    def warlock
        puts("ALRIGHT, I SAID I WOULD WIND UP HERE ONE WAY OR ANOTHER.")
    end

    def wizard
        puts("BY SUNDERED YON LIGHT'S DAWN SHALL YOU ABISMALLY OBEY ME.")
    end

end