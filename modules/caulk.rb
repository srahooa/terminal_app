module Caulk#Cleaning up code, pulling modules into separate files.
    def Caulk
        caulk = []
        caulk << "You made it safely across!"
        caulk << "Your wagon capsized!"
        caulk << "You made it to the other side, but drifted downstream and lost the trail."
        puts caulk.sample
    end
end