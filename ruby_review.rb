##Ruby Review - Day Four

def make_poster(general_material)
    "use #{general_material} to make this poster "
end

specific_material = "red marker"
make_poster(specific_material)

puts "Enter a word or sentence."
users_sentence = gets.chomp
puts "Do you want us to yell or whisper it?"
loud = gets.chomp.downcase
if loud == "yell"
    puts users_sentence = users_sentence.upcase
elsif loud == "whisper"
    puts users_sentence = users_sentence.downcase
else
    puts "Invalid response"
end

