#THIS FILE HOLDS MANY OF THE METHODS THAT ARE CALLED TO MAKE THE GAME RUN

require "artii"                     #FANCY TITLES
require "colorize"                  #COLORIZING TITLES AND CERTAIN OPTIONS
require_relative "obstacles"        #CLASS THAT PRESENTS MENUS
require_relative "modules/trade"    #RANDOMISED TRADE OPTIONS (FORT AND LANDSCAPE SPECIFIC)
require_relative "modules/speak"    #RANDOMISED SPEAK OPTIONS (FORT AND LANDSCAPE SPECIFIC)
require_relative "modules/ford"     #RANDOMISED FORD OPTIONS (RIVER SPECIFIC)
require_relative "modules/ferry"    #RANDOMISED FERRY OPTIONS (RIVER SPECIFIC)
require_relative "modules/caulk"    #RANDOMISED CAULK OPTIONS (RIVER SPECIFIC)



#WELCOME SCREEN
def welcome   #WELCOMES YOU TO THE OREGON TRAIL
    a = Artii::Base.new
    puts a.asciify("Welcome to").center(80).colorize(:green)
    puts a.asciify("The Oregon Trail").colorize(:green) + ("\n\n\n")
    puts "------------Redux!------------".center(80).colorize(:blue)
    sleep(4)
    system "clear" 
end

#START OF USER INPUT
def main_menu       #INITIAL GAME PLAY OPTIONS
    options = {     #ITEMS TO APPEAR IN THE MENU
        "1": "Travel the Trail", 
        "2": "Learn about the Trail", 
        "3": "Ask for help",
        "4": "Quit the Trail", 
    } 
    
    obstacles = Obstacles.new(options) #CALLS THE CLASS TO DISPLAY A MENU
    
    puts "Welcome to the Oregon Trail Redux"
    puts obstacles.show         #PRESENTS THE MENU
    pick = gets.chomp
        if pick == "1"              #PLAYER PICKS 1 AND YOURE DIRECTED TO THE TRAVEL_TRAIL METHOD TO GET YOU STARTED
            travel_trail
        elsif pick == "2"           #PLAYER PICKS 2 AND YOURE DIRECTED TO INFORMATION ABOUT THE TRAIL
            learn
        elsif pick == "3"           
            help                    #PRESENTS PLAYER WITH A HOW-TO MENU
        elsif pick == "4"
            exit                    #YOU CAN LEAVE THE GAME GRACEFULLY
        else
            puts "Invalid input"
        main_menu
    end
end

#KICKOFF OF JOURNEY. LET'S GET YOUR NAME.
def travel_trail
    puts "Exciting news! Please enter the name of your party leader."
    name = gets.chomp.upcase
    puts "Good luck #{name}!!\nYou are departing in April in hopes of good weather.\nFrom Independence, Missouri, your next stop is the Kansas River. Safe travels, #{name}!"
    puts "Press 'Enter' to continue"
    input = gets
    travel 
end

# details about trail only shown on main menu
def learn
    puts "\nTry taking a journey by covered wagon across 2170 miles (3490 km) of plains, rivers, and mountains. Try! On the plains, will you slosh your oxen through mud and water-filled ruts or will you plod through dust six inches (15.25 cm) deep?\n\nHow will you cross the rivers? If you have money, you might take a ferry (if there is a ferry). Or, you can ford the river and hope you and your wagon aren’t swallowed alive!\n\nIf for some reason you don’s survive — your wagon burns, or thieves steal your oxen, or you run out of provisions, or you die of cholera — don’t give up! Try again … and again … and again."
    puts "\nPress 'Enter' to return to menu"
    input = gets
    main_menu 
end

def help #BASIC HOW TO MENU
    puts "\nHELP: \n\nAs you move throughout the Oregon Trail use your number keys to make your choice.\nOnce you have entered the number of your choice, press 'return'.\nIf you are looking to leave the game immediately, press your 'control' and 'c' keys simultaneously. Otherwise, you will have the option when you reach a landmark."
    puts "\nPress 'Enter' to return to the main menu."
    input = gets
    system "clear"
    main_menu
end

#TRAVEL IS MEANT TO SHOW TIME PASSING, ENSURING THE PLAYER RECOGNIZES THAT THEY ARE WALKING FOR DAYS.
def travel #USED TO GIVE THE ALLUSION THAT TIME IS PASSING
    2.times do
        "walking ... walking ... walking\n".split(//).each do |c|
        sleep (0.1) 
        print c
        end
        system "clear"
    end
end

#WHEN YOU HAVE TO CROSS A RIVER
def river(river_name, distance)     #ALLOWS FOR VARIABLES SIGNIFYING THE ACTUAL SITES ON THE TRAIL
    include Ford, Caulk, Ferry      #BRINGS IN MODULES THAT CARRY OUT RESULTS FROM THE PLAYER SELECTION

    options = {                        #ITEMS TO APPEAR IN THE MENU
        "1": "Ford the river (could be dangerous)", 
        "2": "Caulk the wagon and float the river (might die)", 
        "3": "Take a ferry (safe bet)",
        "4": "Quit the Trail" 
    } 
        
    obstacles = Obstacles.new(options)
    # days = Days.new(distance)
        
    puts "You have reached the #{river_name} River. You have traveled #{distance} miles\n".colorize(:blue)
    puts "Phew, you've been on the trail #{distance/12} days! Keep on going.\n".colorize(:yellow)
    sleep(1)
    puts obstacles.show
    pick = gets.chomp
        case pick
        when "1"              #PLAYER PICKS 1 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM FORD
            system "clear"
            pick.ford
        when "2"           #PLAYER PICKS 2 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM CAULK
            system "clear"
            pick.caulk
        when "3"           #PLAYER PICKS 3 AND THE FERRY MODULE IS CALLED
            system "clear"
            pick.ferry 
        when "4"        #ALLOWS FOR GRACEFUL EXIT OF GAME
            exit
        else
            puts "Invalid input"
        end
    sleep(1)
    system "clear"
    travel
end

#WHEN YOU ENCOUNTER A FORT
def fort(fort_name, distance)           #ALLOWS FOR VARIABLES SIGNIFYING THE ACTUAL SITES ON THE TRAIL
    include Trade, Speak                #BRINGS IN MODULES THAT CARRY OUT RESULTS FROM THE PLAYER SELECTION

    options = {                         #ITEMS TO APPEAR IN THE MENU
        "1": "See what is for trade.", 
        "2": "Talk to a stranger.", 
        "3": "Continue on the trail.",
        "4": "Quit the Trail" 
    } 
        
    obstacles = Obstacles.new(options)  #CALLS IN THE CLASS THAT ENABLES THE MENU
        
    puts "You have reached Fort #{fort_name}. You have traveled #{distance} miles.\n"       #EDUCATING THE PLAYER
    puts "\nPhew, you've been on the trail #{distance/12} days! Keep on going.\n".colorize(:yellow)    
    sleep(1)
    puts obstacles.show         #DISPLAYS THE MENU    
    pick = gets.chomp
        case pick 
            when "1"          #PLAYER PICKS 1 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM TRADE
                system "clear"
                pick.trade
            when "2"       #PLAYER PICKS 2 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM SPEAK
                system "clear"
                pick.speak
            when "3"       #PLAYER PICKS 3 AND YOU CONTINUE ON THE TRAIL
                system "clear"
            when "4"
                exit
            else
                puts "Invalid input. You're back to the trail." 
        end
    sleep(2)
    system "clear"
    travel
end

#WHEN YOU ENCOUNTER A MAJOR LANDMARK
def landscape(name, distance)   #ALLOWS FOR VARIABLES SIGNIFYING THE ACTUAL SITES ON THE TRAIL
    include Trade, Speak        #BRINGS IN MODULES THAT CARRY OUT RESULTS FROM THE PLAYER SELECTION
    
    options = {                 #ITEMS TO APPEAR IN THE MENU
        "1": "See what is for trade.", 
        "2": "Talk to a stranger.", 
        "3": "Continue on the trail.",
        "4": "Quit the Trail" 
    } 
        
    obstacles = Obstacles.new(options)  #CALLS IN THE CLASS THAT ENABLES THE MENU
        
    puts "You have reached #{name}. You have travelend #{distance} miles.\n" #EDUCATING THE PLAYER
    puts "\nPhew, you've been on the trail #{distance/12} days! Keep on going.".colorize(:yellow)    
    sleep(1)
    puts obstacles.show     #DISPLAYS THE MENU 
    pick = gets.chomp
        case pick    
            when "1"      #PLAYER PICKS 1 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM TRADE
                system "clear"
                pick.trade      
            when "2"
                system "clear"  #PLAYER PICKS 2 AND YOURE PRESENTED WITH A RANDOM OCCURENCE FROM SPEAK
                pick.speak
            when "3"   #PLAYER PICKS 3 AND YOU CONTINUE ON THE TRAIL
                system "clear"
            when "4"
                exit
            else
                puts "Invalid input"
        end
    sleep(2)
    system "clear"
    travel
end

# TITLE FOR WHEN YOU DIE.
def you_lose
    a = Artii::Base.new
    puts a.asciify("You Died").colorize(:red)   #FANCY TEXT, BUT YOU LOST. BOO.
    puts "Press 'Enter' to return to menu"      #ENABLES YOU TO PLAY AGAIN
    input = gets
    system "clear"
    main_menu                                   #RETURNS TO START MENU
end

# TITLE FOR WHEN YOU MAKE IT TO OREGON CITY  
def made_it
    a = Artii::Base.new
    puts a.asciify("You Made it to Oregon City!!").colorize(:red) #FANCY TEXT TO CELEBRATE THE END
    puts a.asciify("CONGRATULATIONS!!").colorize(:red)
    puts "Press 'Enter' to return to menu"  #ENABLES YOU TO PLAY AGAIN, LEARN, OR QUIT GRACEFULLY
    input = gets                            #REALLY ANY KEY CAN WORK, JUST PROVIDING GUIDANCE
    system "clear"                          #CLEARS SCREEN
    main_menu                               #RETURNS TO START MENU
end

