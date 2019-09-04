module Speak
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
end