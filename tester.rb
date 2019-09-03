require "artii"
require "colorize"
require_relative "texts"
require_relative "obstacles"
# require_relative "or_trail"

welcome

options = {
    "1": "Travel the Trail", 
    "2": "Learn about the Trail", 
    "3": "Quit the Trail", 
} 

obstacles = Obstacles.new(options)

puts "Welcome to the Oregon Trail Redux"
puts obstacles.show
pick = gets.chomp
if pick == "1"
    travel_trail
elsif pick == "2"
    learn
elsif pick == "3"
    exit
else
    puts "Invalid input"
end