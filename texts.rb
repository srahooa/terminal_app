#this has main_menu, learning, speak

require "artii"
require "colorize"
require_relative "obstacles"



# welcome screen
def welcome
    a = Artii::Base.new
    puts a.asciify("Welcome to").colorize(:green)
    puts a.asciify("The Oregon Trail").colorize(:green)
    puts "------------Redux!------------".colorize(:blue)
    sleep(4)
    system "clear" 
end

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

def travel_trail
    puts "Exciting news! Please enter the name of your party learder"
    name = gets.chomp 
    puts "Safe travels, #{name}. And good luck!!"
    puts "Press space bar to continue"
    
end

# details about trail only shown on main menu
def learn
    puts "\nTry taking a journey by covered wagon across 2170 miles (3490 km) of plains, rivers, and mountains. Try! On the plains, will you slosh your oxen through mud and water-filled ruts or will you plod through dust six inches (15.25 cm) deep?\n\nHow will you cross the rivers? If you have money, you might take a ferry (if there is a ferry). Or, you can ford the river and hope you and your wagon aren’t swallowed alive!\n\nIf for some reason you don’s survive — your wagon burns, or thieves steal your oxen, or you run out of provisions, or you die of cholera — don’t give up! Try again … and again … and again."
    puts "\nPress any key to return to menu"
    main_menu
end

# to show the progression of time
def travel
    "walking ... walking ... walking\nwalking ... walking ... walking\n".split(//).each do |c|
        sleep 0.1 
        print c 
    end
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
    puts "Press any key to return to menu"
    input = gets
    system "clear"
end


def people 
    [ 
    "A frantic wife tells you: It says right here in the Shively guidebook: “You must hire an Indian to pilot you at the crossing of the Snake river, it being dangerous if not perfectly understood. But my husband insists on crossing without a guide!”",
    "Miles Hendrick tells you: Well, friend, this is where we part. I am bound for California with an imposing desert to cross. And you — you have got the Snake River to cross, which I hear s no picnic! Write us, you or the Missus, just as soon asa you reach Oregon!”",
    "Big Louie tells you: Five dollars to ferry us over the Green River? Those ferrymen’ll make a hundred dollars before breakfast! We’ll keep down river until we find a place to ford our wagon and animals. What little money we have left, we’ll keep!",
    "A shoshone Indian tells you: When wagons first started coming through here, we did not mind. We even found it good to trade game and fish with the travellers and help them cross the rivers. Now there are too many white men and too little land for grazing.",
    "A mormon traveler tells you: My family and I travel with 40 other families to the valley of the Great Salt Lake to seek religious freedom. Back east, Mormons are persecuted. In Utah, we’ll join together to build a new community, changing desert into farmland.",
    "Aunt Rebecca Sims tells you: “No butter or cheese or fresh fruit since Fort Laramie! Bless me, but i’d rather have my larder full of food back east than have our names carved on that rock! Well, tis a sight more cheery than all the graves we passed.",
    ]
end 




