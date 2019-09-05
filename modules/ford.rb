module Ford #Cleaning up code, pulling modules into separate files.
    def ford
        ford =["You made it safely across!",
        "Uh, oh, you got stuck in the mud.",
        "Oh no! Some of your food floated away."
        ]
        ford_result = ford.sample 
     
        if ford_result == "You made it safely across!"
            puts "You made it safely across!".colorize(:green)
            sleep (2)
        elsif ford_result == "Uh, oh, you got stuck in the mud."
            puts "Uh, oh, you got stuck in the mud!".colorize(:yellow)
            sleep (2)
        else 
            puts "Oh no! Some of your food floated away.".colorize(:yellow)
            sleep (2)
        end
    end
end