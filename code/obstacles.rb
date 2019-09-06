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
