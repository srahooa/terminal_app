#SEE WHATS UP FOR TRADE
module Trade
    def trade
        trade = [
            "A woman is in need of 3 sets of clothing in exchange for one wagon wheel.".colorize(:purple),
            "A man is in need of 1 ox in exchange for 600 rounds of ammunition.".colorize(:purple),
            "A gentleman is in search of 15 kilos of food in exchange for one wagon axel.".colorize(:purple),
            "An old lady is in need of 1 wagon tongue in exchange for 3 sets of clothing.".colorize(:purple),
            "A family is in need of 1 ox in exchange for 2 wagon wheels.".colorize(:purple),
            ]
        puts trade.sample
        
        puts "\nPress 'Enter' to return to the trail."
        input = gets
        system "clear"
        
        #AMBITION, TALKING MYSELF IN CIRCLES

        # puts "Do you want to trade?  [Y]es or [N]o"
        # input = gets
        # input == "y" || "n"
        # while true
        #     if input == "n"
        #     puts "Bummer. Oh, well. Onwards!"
        #     break
        # else input =="y"
        #     puts "Great, your new supplies have been added to your haul."
        #     break
        # end
    end
end