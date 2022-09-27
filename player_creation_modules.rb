module Player_Creation
    name = ""
    race = ""
    _class = ""

    def Player_Creation.set_name naming 
       name = naming.chomp
       puts("HELLO" + " " + name.upcase)
       return name
    end

    def Player_Creation.set_race racial
        race = racial.chomp
        puts("YOU ARE .. " + race.upcase)
        return race
    end

    def Player_Creation.set_class _class1
        _class = _class1.chomp
        puts("YOU ARE .. " + _class.upcase)
    end
end