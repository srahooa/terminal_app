# main.rb will call on the various classes and methods

require "artii"
require "colorize"
require "faker"
require_relative "texts"
require_relative "obstacles"
require_relative "modules/trade"
require_relative "modules/speak"
require_relative "modules/ford"
require_relative "modules/ferry"
require_relative "modules/caulk"
# require_relative "or_trail"

welcome

main_menu


travel

river("Kansas", 102)

travel

river("Big Blue", 184)

travel 

fort("Kearney", 302)  

travel 

fort("Chimney Rock", 416) 

travel 

fort("Laramie", 554)

travel 

landscape("Independence Rock", 774)

travel 

landscape("South Pass", 1009) 

travel 

river("Green", 1366)

travel 

river("Springs", 1423) 

travel 

fort("Hall", 1565)

travel 

fort("Boise", 1802)

travel 

landscape("Blue Mountains", 1915)

travel 

river("The Dalles", 2100) 

made_it