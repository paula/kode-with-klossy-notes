##Ruby Array Iterators - Day Three

def iteration
    "to go through something"
end

favorite_things = ["warm woolen mittens", "brown paper packages tied up with string", "cat whisker","blue bells", "sleigh bells"]
count = 0
favorite_things.each do |thing|         #.each and do commands iterate items (parameter in between pipes)    
    puts thing + "!"                    #prints and adds an exclamation point to each of the items
    count += 1                          #checks how many times program ran through
end
#puts count

def double_numbers(array)       #method to double numbers 
    array.each do |num|         #iterates array of numbers and prints the multiplied version of it
        puts num*2
    end
end

fave_numbers = [7,14,83,99]
your_numbers = [3,7,6,66]

double_numbers(fave_numbers)
double_numbers(your_numbers)