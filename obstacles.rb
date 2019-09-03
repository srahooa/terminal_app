class Obstacles #includes main menu, encountering a river, fort, or breakage
    def initialize(options)
        @options = options
    end
  

    def show
        title = "What would you like to do?" #consistant
        lines = []
        lines << title
        @options.each {|num, option| lines << "#{num}. #{option}"} # allows for input of different options
        return lines.join("\n") + "\n" #presentation
    end
end




#     puts "Exciting! Before we embark, what is the name of your party leader?"
#     user = gets.chomp
#     puts "Great, #{user}! What is your occupation? \n 1. You may be a banker from boston\n 2. Be a carpenter from Ohio\n 3. Be a farmer from Illinois"
#     occupation = gets.chomp.to_i
#     puts occupation == 1 || 2 || 3 ? "Great, we're ready to get started. You will embark the trail in April in hopes of avoiding bad weather. Good luck!" : "Input Invalid. Enter 1, 2, or 3."        end
#   end
    # attr_accessor :place 
    # attr_reader :choices, :outcomes 

    # def initialize(place, choices, outcomes)
    #     @place = place #array of obstacle names
    #     @choice = choice #array of ways around the obstacle
    #     @outcome = outcome #survival or death
    # end

    # def rivers(place)
    #     puts "You have reacehd the #{place}." 
    # end

    # def forts(name)
    #     puts "You have made it to #{name}"
    # end

    # def landscape(name)
    #     puts "You have reached #{name}"
    # end