#Classes_Seting(class_name)
require_relative "classes_set.rb"
#Module_DE5
require_relative "rule-set.rb"
#New_Enemy(n,r,c)
require_relative "enemies_creation.rb"

module World_Descriptors

    def World_Descriptors.set_locality_dec(size)
        case size
        when "l"
            return "A LARGE ROOM VAST BEYOND A REASON. "
        when "m"
            return "A ROOM NONE THE LESS, YET GET THIS, IT DOESN'T NEED TO BE. "
        when "s"
            return "A ROOM OF FINITE DIMENSIONS. "
        end
    end

    def World_Descriptors.get_names_enemy(ind,caseet)
        @array_of_names = ["Bobles","Boyels","Corate","Dogaley","Coirtae"]
        @array_of_names.sort { |a, b| a <=> b }
        @index = ind
        case caseet
        when 0
            return @array_of_names[@index]
        when 1
            return @array_of_names.size()
        end
    end

end

module Player_Interpreter

    def Player_Interpreter.com_int_(inputs,bool,status,enemies)
        @set_inputs = inputs.upcase.split(/ /)
        @subject = ""
        @commands = {"GO" => Player_Interpreter.go_to(@subject), "QUIT" => Player_Interpreter.quit(status)}
        ret = run_checks_for_inputs(@set_inputs,@commands)
        return [ret[0],ret[1]]
    end

    def Player_Interpreter.run_checks_for_inputs(input_list,command_list)
        for i in 0..input_list.size()
            if command_list.has_key?(input_list[i])
                puts("CHECK")
                return command_list[input_list[i]]
            end
        end
    end

    def Player_Interpreter.go_to(subject)
        return [true, :going]
    end

    def Player_Interpreter.quit(status)
        return [true,:quit]
    end



end

class New_Module
    attr_accessor :id, :descriptors, :range, :enemies, :foo_bar, :world_gen, :state

    def initialize(rng_seed)
        @world_gen = Random.new(rng_seed * 1000 % 120)
        @foo_bar = true
        @id = @world_gen.rand * 10 % 5
        @enemies = []
        @state = :new_game
        main_loop(@foo_bar)
    end

    def main_loop(bool)
        procure_descriptions()
        seed_enemies() if @enemies.size() == 0
        procure_enemy_descriptors()
        get_player_inputs()
        bool = @foo_bar
        update() if bool
    end

    def get_player_inputs
        chooser = gets.chomp
        #returns a bool[t/f] and a state.
        results = Player_Interpreter.com_int_(chooser,@foo_bar,@state,@enemies)
        @foo_bar = results[0]
        @state = results[1]
        @foo_bar = false if @state == :quit
        print(@foo_bar)
    end

    def seed_enemies
        array_of_classes = ["Rogue","Warlock","Wizard"]
        clss = array_of_classes[@world_gen.rand() * 10 % array_of_classes.size()]
        index = World_Descriptors.get_names_enemy(0,1)
        naming_con =  World_Descriptors.get_names_enemy(index,0)
        @enemies << New_Enemy.new(naming_con,"",clss.downcase)
    end

    def procure_enemy_descriptors
        puts(@enemies[0].description)
    end

    def procure_descriptions
        room_list = ["l","m","s","s","s","l"]
        room_check = room_list[@id]
        room_dec = World_Descriptors.set_locality_dec(room_check)
        puts(room_dec)
    end

    def update_game_state
        @state = :entered
    end

    def update
        @id = @world_gen.rand * 10 % 5 if @state == :new_room
        update_game_state()
        main_loop(@foo_bar)
    end

end