module Caulk#Cleaning up code, pulling modules into separate files.
    def caulk
        caulk = [
        "You made it safely across!",
        "Your wagon capsized!",
        "You made it to the other side, but drifted downstream and lost the trail."
        ]
        caulk_result = caulk.sample
        
        if caulk_result == "You made it safely across!"
            puts "You made it safely across!".colorize(:green)
            sleep (1)
        elsif caulk_result == "Your wagon capsized!"
            puts "Your wagon capsized!".colorize(:red)
            sleep (1)
            you_lose
        else 
            puts "You made it to the other side, but drifted downstream and lost the trail.".colorize(:yellow)
            sleep (1)
        end
    end
end