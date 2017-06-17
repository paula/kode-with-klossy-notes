##Ruby Hashes - Day Three

donuts = ["strawberry glazed", "glazed", "chocolate cake", "nutella", "raspberry filled"]
puts donuts[1]

donut_hash = {
    :katherine => "strawberry glazed",          #:key => "value"
    :paula => "glazed",                         #use ":" to make it a symbol rather than a string
    :angela => "strawberry sprinkles",          #keys should be unique
    :charlie => "nutella",
    :sabella => "raspbery filled"
}

puts donut_hash[:paula]                         #hashes are like arrays but using keys instead of numbers to index

#reassigning values
donut_hash[:angela] = "chocolate cake"

#adding values to a hash
donut_hash[:karlie] = "chocolate with chocolate glaze"

puts donut_hash


#example of hash with integers/floats as values
post = {
    :likes => 0,
    :photo => "photo file",
    :comments => [                                #array of comments
        {                                         #hash of info for each comment
            :text => "this is super cool",        #could nest several more arrays and hashes (ex. :replies)
            :user => "kodewithklossy",
            :replies => {
                :text => "ikr!!!",
                :user => "taylor want"},
            },
        {
            :text => "love female empowerment",
            :user => "karlie kloss"},
        {
            :text => "yay for koding!",
            :user => "kristyn bryan"},
        ],
    :caption => "koding rn",
    :location => "wework",
    :time => "11:59 pm",
    :date => 06072017,
    :account => "paulapaysan"
}

#pass hash into a method (pull out name and photo)
 def display_post(post_hash)
     "#{post_hash[:account]} has posted a #{post_hash[:photo]}"
 end
 
 def display_post2(post_hash)
     post_hash.each do |category, data|
        puts "The #{category} is #{data}." 
     end
 end

#when we run this code, it should say ___ has posted a picture
puts display_post(post)
display_post2(post)

#nested data structures and APIs
puts post[:comments][0]                           #[0] or .first after the brackets
puts post[:comments][2]                           #[2] or [-1] or .last
puts post[:comments][2][:user]                    #puts the user for the 3rd comment
puts post[:comments][1][:text]

post[:comments].each do |comment_hash|            #each thing put in is a comment hash
    puts "#{comment_hash[:user]}: #{comment_hash[:text]}"
end