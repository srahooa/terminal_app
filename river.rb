require_relative "obstacles"
require_relative "modules"


class River < Obstacles
    inude Ford, Caulk, Ferry
    def river(name)
        def initialize 
            @name = name
        end

        options = {
            "1": "Ford the river", 
            "2": "Caulk the wagon and float the river", 
            "3": "Take a ferry", 
        } 
            
        obstacles = Obstacles.new(options)
            
        puts "You have reached the #{name} river."
        puts obstacles.show
        pick = gets.chomp
            if pick == "1"
                system "clear"
                ford
            elsif pick == "2"
                system "clear"
                caulk
            elsif pick == "3"
                system "clear"
                ferry
            else
                puts "Invalid input"
            end
        sleep(4)
        system "clear"
    end
end

puts river = River.new("Big Blue")