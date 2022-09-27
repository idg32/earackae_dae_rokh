require_relative "rule-set.rb"
#Classes_Seting(class_name)
require_relative "classes_set.rb"
require_relative "player_creation_modules.rb"
#the module New_Module(rng_seed)
require_relative "world_modules.rb"

class New_Character
    attr_accessor :name, :race, :_class, :dungeon
    
    def initialize
        print("WHO ARE YOU? ")
        @name = Player_Creation.set_name(gets)
        print("DO YOU PREFER A SET ARCHETYPAL TO YOUR APPEARANCE? ")
        @race = Player_Creation.set_race(gets)
        print("ARE YOU A ROGUE, WARLOCK, SORCERER? ")
        singleton_ = Player_Creation.set_class(gets)
        @_class = Classes_Seting.new(singleton_)
        system 'clear'
        system('cls')
        @dungeon = New_Module.new(rand % 100)
    end
end