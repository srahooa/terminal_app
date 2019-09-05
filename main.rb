# main.rb will call on the various classes and methods
require "artii"                     #FANCY TITLES
require "colorize"                  #COLORIZING TITLES AND CERTAIN OPTIONS
require "faker"                     #RANDOMISES NAMES OF FOLKS YOU SPEAK TO ALONG THE TRAIL
require_relative "obstacles"        #CLASS THAT PRESENTS MENUS
require_relative "texts"            #PULLS THE VARIOUS METHODS NEED TO PROGRESS THROUGH THE GAME
require_relative "modules/trade"    #RANDOMISED TRADE OPTIONS (FORT AND LANDSCAPE SPECIFIC)
require_relative "modules/speak"    #RANDOMISED SPEAK OPTIONS (FORT AND LANDSCAPE SPECIFIC)
require_relative "modules/ford"     #RANDOMISED FORD OPTIONS (RIVER SPECIFIC)
require_relative "modules/ferry"    #RANDOMISED FERRY OPTIONS (RIVER SPECIFIC)
require_relative "modules/caulk"    #RANDOMISED CAULK OPTIONS (RIVER SPECIFIC)


#METHODS CALLED FOR TO START THE GAME
welcome
main_menu

# CALLS FORTH THE TRAVEL SEGMENT OF THE APPLICATION. THE VARIABLES REPRESENT THE NAMES AND DISTANCES
#"RIVER", "FORT", AND "LANDSCAPE" CALL METHODS WITH MENUS OF OPTIONS. 
#CERTAIN OPTIONS ARE MORE RISKY THAN OTHERS.

river("Kansas", 102)

river("Big Blue", 184)

fort("Kearney", 302)  

landscape("Chimney Rock", 416) 

fort("Laramie", 554) 

landscape("Independence Rock", 774)

landscape("South Pass", 1009) 

river("Green", 1366)

river("Springs", 1423)  

fort("Hall", 1565)

fort("Boise", 1802)

landscape("Blue Mountains", 1915)

river("The Dalles", 2100) 

made_it  #HOPEFULLY YOU HAVE MADE IT THIS FAR. IF NOT, SORRY YOU DIED. 