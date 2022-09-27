class Classes_Seting
    attr_accessor :class

    def initialize(naming_to_this_class)
        #check_if_nameing_is...
        @class = naming_to_this_class.chomp.downcase if naming_to_this_class != nil
        eval(@class) if @class == "rogue" || @class == "warlock" || @class == "sorcerer"
    end

    def warlock
        puts("CLASS SELECTED" + " " + @class)
    end

    def rogue
        puts("CLASS SELECTED" + " " + @class)
    end

    def sorcerer
        puts("CLASS SELECTED" + " " + @class)
    end
end

class Classes_Enemy_Sets
    attr_accessor :class

    def initialize(naming_to_this_class)
        #check_if_nameing_is...
        @class = naming_to_this_class.chomp.downcase if naming_to_this_class != nil
        eval(@class) if @class == "rogue" || @class == "warlock" || @class == "sorcerer"
    end

    def rogue
    end

    def warlock
    end

    def wizard
    end

end