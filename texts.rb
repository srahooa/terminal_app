#this has main_menu, learning, speak

require "artii"
require "colorize"
require_relative "obstacles"


# welcome screen
def welcome
    a = Artii::Base.new
    puts a.asciify("Welcome to").colorize(:green)
    puts a.asciify("The Oregon Trail").colorize(:green) + ("\n\n\n")
    puts "------------Redux!------------".center(80).colorize(:blue)
    sleep(4)
    system "clear" 
end

# initial user input 
def main_menu
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
end

# journey kickoff
def travel_trail
    puts "Exciting news! Please enter the name of your party learder."
    name = gets.chomp 
    puts "Good luck #{name}!!\nYou are departing in April in hopes of good weather.\nFrom Independence, Missouri, your next stop is the Kansas River. Safe travels, #{name}!"
    puts "Press 'Enter' to continue"
    input = gets 
end

# details about trail only shown on main menu
def learn
    puts "\nTry taking a journey by covered wagon across 2170 miles (3490 km) of plains, rivers, and mountains. Try! On the plains, will you slosh your oxen through mud and water-filled ruts or will you plod through dust six inches (15.25 cm) deep?\n\nHow will you cross the rivers? If you have money, you might take a ferry (if there is a ferry). Or, you can ford the river and hope you and your wagon aren’t swallowed alive!\n\nIf for some reason you don’s survive — your wagon burns, or thieves steal your oxen, or you run out of provisions, or you die of cholera — don’t give up! Try again … and again … and again."
    puts "\nPress any key to return to menu"
    input = gets
    main_menu 
end

# FIRST DRARFT OF TRAVEL TO SHOW TIME PASSING
# def travel
#     "walking ... walking ... walking\nwalking ... walking ... walking\n".split(//).each do |c|
#         sleep 0.1 
#         print c 
#     end
# end

def travel
    distance = 0
    until distance == 3
        distance += 1
        "walking ... walking ... walking\n".split(//).each do |c|
            sleep 0.1 
            print c 
        end
    end
end

#crossing a river
def river(river_name)
    def initialize 
        @river_name = river_name
    end

    options = {
        "1": "Ford the river", 
        "2": "Caulk the wagon and float the river", 
        "3": "Take a ferry", 
    } 
        
    obstacles = Obstacles.new(options)
        
    puts "You have reached the #{river_name} river."
    puts obstacles.show
    pick = gets.chomp
        if pick == "1"
            system "clear"
            ford
        elsif pick == "2"
            system "clear"
            caulk
        elsif pick == "3"
            system "clear"
            ferry
        else
            puts "Invalid input"
        end
    sleep(4)
    system "clear"
end

def ford
    ford =[
    "You made it safely across!".colorize(:green),
    "Uh, oh, you got stuck in the mud.".colorize(:yellow),
    "Oh no! Some of your food floated away.".colorize(:yellow)]
    puts ford.sample 
end 

def caulk
    caulk = [
    "You made it safely across!".colorize(:green),
    "Your wagon capsized!".colorize(:red),
    "You made it to the other side, but drifted downstream and lost the trail.".colorize(:yellow)]
    puts caulk.sample
end

def ferry
    puts "You made it safely across!".colorize(:green)
end

def fort(fort_name)
    def initialize(fort_name)
        @fort_name = fort_name
    end
    
    options = {
        "1": "See what is for trade.", 
        "2": "Talk to a stranger.", 
        "3": "Continue on the trail.", 
    } 
        
    obstacles = Obstacles.new(options)
        
    puts "You have reached the Fort #{fort_name}."
    puts obstacles.show
    pick = gets.chomp
        if pick == "1"
            system "clear"
            trade
        elsif pick == "2"
            system "clear"
            speak
        elsif pick == "3"
            system "clear"
            travel
        else
            puts "Invalid input"
        end
    sleep(4)
    system "clear"
end

#SEE WHATS UP FOR TRADE
def trade
    trade = [
        "A woman is in need of 3 sets of clothing in exchange for one wagon wheel.",
        "A man is in need of 1 ox in exchange for 600 rounds of ammunition.",
        "A gentleman is in search of 15 kilos of food in exchange for one wagon axel.",
        "An old lady is in need of 1 wagon tongue in exchange for 3 sets of clothing.",
        "A family is in need of 1 ox in exchange for 2 wagon wheels.",
    ]
    puts trade.sample
end

# ADVICE AND FUN FACTS FROM FELLOW TRAVELERS
def speak 
    speak =[ 
    "A frantic wife tells you: It says right here in the Shively guidebook: “You must hire an Indian to pilot you at the crossing of the Snake river, it being dangerous if not perfectly understood. But my husband insists on crossing without a guide!”",
    "Miles Hendrick tells you: Well, friend, this is where we part. I am bound for California with an imposing desert to cross. And you — you have got the Snake River to cross, which I hear s no picnic! Write us, you or the Missus, just as soon asa you reach Oregon!”",
    "Big Louie tells you: Five dollars to ferry us over the Green River? Those ferrymen’ll make a hundred dollars before breakfast! We’ll keep down river until we find a place to ford our wagon and animals. What little money we have left, we’ll keep!",
    "A shoshone Indian tells you: When wagons first started coming through here, we did not mind. We even found it good to trade game and fish with the travellers and help them cross the rivers. Now there are too many white men and too little land for grazing.",
    "A mormon traveler tells you: My family and I travel with 40 other families to the valley of the Great Salt Lake to seek religious freedom. Back east, Mormons are persecuted. In Utah, we’ll join together to build a new community, changing desert into farmland.",
    "Aunt Rebecca Sims tells you: “No butter or cheese or fresh fruit since Fort Laramie! Bless me, but i’d rather have my larder full of food back east than have our names carved on that rock! Well, tis a sight more cheery than all the graves we passed.",
    ]
    puts speak.sample
    puts "Press 'Enter' to return to menu"
    input = gets
    system "clear"
end 

def landscape(name)
    def initialize(name)
        @name = name
    end
    
    options = {
        "1": "See what is for trade.", 
        "2": "Talk to a stranger.", 
        "3": "Continue on the trail.", 
    } 
        
    obstacles = Obstacles.new(options)
        
    puts "You have reached #{name}."
    puts obstacles.show
    pick = gets.chomp
        if pick == "1"
            system "clear"
            trade
        elsif pick == "2"
            system "clear"
            speak
        elsif pick == "3"
            system "clear"
            travel
        else
            puts "Invalid input"
        end
    sleep(4)
    system "clear"
end

# when you die
def you_lose
    a = Artii::Base.new
    puts a.asciify("You Died").colorize(:red)
    puts "Press any key to return to menu"
    input = gets
    system "clear"
end

# when you win / make it to Oregon City 
def made_it
    a = Artii::Base.new
    puts a.asciify("You Made It!!").colorize(:red)
    puts a.asciify("CONGRATULATIONS!!").colorize(:red)
    puts "Press 'Enter' to return to menu"
    input = gets
    system "clear"
end