##Ruby Conditionals - Day Two

ready = true
if ready == true
    puts "close your lid"
end

puts "Enter age:"
age = gets.chomp.to_i
if age >= 16
    puts "you can take your parent's keys"
elsif age == 14 || age == 15
    puts "one more year!"
else
    puts "you can't take your parents keys"
end

# && "ampersand" - and
# || "pipes" - or
# != "factorial equals sign" - not equal

def password_check(x)
    correct_password = "p0tat0"
    
    if x == correct_password
        puts "Welcome!"
    else
        puts "Password invalid"
    end
end

puts "password:"
guess = gets
password_check(guess)