def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(list)
    list.map do |name| 
        badge_maker(name)
    end
end

def assign_rooms(list)
    list.map.with_index do |name, idx|
        "Hello, #{name}! You'll be assigned to room #{idx + 1}!"
    end
end

def printer(list)
    batch_badge_creator(list).each do |msg|
        puts msg
    end
    assign_rooms(list).each do |num|
        puts num
    end
end