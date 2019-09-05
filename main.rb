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

river("Kansas")

travel

river("Big Blue")

travel 

fort("Kearney")  

travel 

fort("Chimney Rock") 

travel 

fort("Laramie")

travel 

landscape("Independence Rock")

travel 

landscape("South Pass") 

travel 

river("Green")

travel 

river("Springs") 

travel 

fort("Hall")

travel 

fort("Boise")

travel 

landscape("Blue Mountains")

travel 

fort("Walla Walla")

travel 

river("The Dalles") 

made_it