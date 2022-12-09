# Write your code here.
require 'pry'

def badge_maker (name)

    "Hello, my name is #{name}."

end

def batch_badge_creator(array)

    new_array = array.map {|name| "Hello, my name is #{name}." }

    new_array

end

def assign_rooms(array)

    new_array = []

    array.each_with_index do |name, i|
        new_array.push("Hello, #{name}! You'll be assigned to room #{i+1}!")
    end

    return new_array
end

def printer (array)
    badge_batch = batch_badge_creator(array)
    badge_rooms = assign_rooms(array)
    
    badge_batch.map {|greeting| puts greeting}
    badge_rooms.map {|assignment| puts assignment}

end
