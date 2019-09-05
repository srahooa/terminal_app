require "colorize"                  #COLORIZING TITLES AND CERTAIN OPTIONS


module Caulk #PRESENTS RESULTS FOR YOUR CHOICE IN HOW TO CROSS THE RIVER
    def caulk
        caulk = [
        "You made it safely across!",
        "Your wagon capsized!",
        "You made it to the other side, but drifted downstream and lost the trail."
        ]
        caulk_result = caulk.sample
        
        if caulk_result == "You made it safely across!"
            puts "You made it safely across!".colorize(:green)
            sleep (1)       #DELAY BEFORE MOVING ON TO PROVIDE TIME TO READ
        elsif caulk_result == "Your wagon capsized!" #THE CURRENT WAY TO DIE ON THE TRAIL
            puts "Your wagon capsized!".colorize(:red)
            sleep (1)
            you_lose
        else 
            puts "You made it to the other side, but drifted downstream and lost the trail.".colorize(:yellow)
            sleep (1)
        end
    end
end