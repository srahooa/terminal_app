require_relative "obstacles"

distace = 0
def travel
    while distance < 82
        distance += 12
        puts "walking ... walking ... walking\n".split(//).each do |c|
        sleep 0.1 
        print c 
        end
        if distance >= 82
            show
        end
    end
end