##Example of Object-Oriented Programming
#Donut Adventure

class Donut
    attr_reader :name, :icing
    attr_accessor :self_defense, :health
    def initialize(name, icing_type)
        @name = name
        @icing = icing_type
        @self_defense =[]
        @health = 10
    end
    
    def stats
       "Your donut's name is #{@name} and it has #{@icing} icing. It is armed with #{@self_defense} and has a health of #{health}."
    end
        
    def encounter(foe)
        puts "Oh no! #{@name} has encountered a #{foe.type}. #{@name} has just suffered #{foe.damage} damage. Remaining health is #{@health - foe.damage}."
    end
        
end

dilly_donut = Donut.new("Dillon","chocolate")
puts dilly_donut.stats

class Foes
    attr_reader :type, :name, :damage
    def initialize(type, name, damage)
        @type = type
        @name = name
        @damage = damage
    end
    
    def stats
        puts "Our foe's name is a #{@name}. It is a #{@type} and can do #{@damage} damage."
    end
   
end

crowture = Foes.new("crowture","Evil-lynn",2)
crowture.stats

dilly_donut.encounter(crowture)