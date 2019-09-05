#SEE WHATS UP FOR TRADE
module Trade
    def trade
        trade = [
            "A woman is in need of 3 sets of clothing in exchange for one wagon wheel.",
            "A man is in need of 1 ox in exchange for 600 rounds of ammunition.",
            "A gentleman is in search of 15 kilos of food in exchange for one wagon axel.",
            "An old lady is in need of 1 wagon tongue in exchange for 3 sets of clothing.",
            "A family is in need of 1 ox in exchange for 2 wagon wheels.",
        ]
        puts trade.sample
        sleep (3)

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