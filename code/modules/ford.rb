require "colorize"                  #COLORIZING TITLES AND CERTAIN OPTIONS

module Ford #CLEANED UP TEXTS.RB FILES- PULLED METHODS INTO MODULES.
    def ford
        ford =["You made it safely across!", #PLAYING WITH PROBABILITY FOR WHICH RANDOMIZED ANSWER YOU WILL GET
        "Uh, oh, you got stuck in the mud.",
        "Uh, oh, you got stuck in the mud.",
        "Current was swift, but you made it!",
        "Oh no! Some of your food floated away.", 
        "Oh no! Some of your food floated away."
        ]
        ford_result = ford.sample 
     
        if ford_result == "You made it safely across!"
            puts "You made it safely across!".colorize(:green)
            sleep (1)
        elsif ford_result == "Uh, oh, you got stuck in the mud." || "Current was swift, but you made it!"
            puts "Uh, oh, you got stuck in the mud!".colorize(:yellow)
            sleep (1)
        else 
            puts "Oh no! Some of your food floated away.".colorize(:yellow)
            sleep (1)
        end
    end
end