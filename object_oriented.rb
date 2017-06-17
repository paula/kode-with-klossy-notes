##Object-Oriented Programming - Day Five

#class = template
#class creates objects

class User                                      #capital letters reserved for class names
    #attr_reader lets you see the attribute, attr_writer lets you change the attribute
    #attr_accessor reads and writes
    attr_reader :username, :best_friend, :story  
    attr_writer :password, :story
    attr_accessor :story, :profile_pic
    
    #initialize creates a new instance of the user class
    def initialize(user, pass, prof = "snapchat_ghost_pic.jpg") 
        @username = user                        #defines @attributes we'll use later
        @password = pass
        @best_friend                            #unknown information not required to be passed into method yet
        @story = []
        @profile_pic
    end
    
    def add_to_story(snap)
        @story.push(snap)
    end
end

#creates an instance of the user class
taylor = User.new("twant","smashword")          #call initialize with .new() (only time it'll be named something different than the actual method name)
kristyn = User.new("kcutie","p@ssw0rd","kittycat.jpg")
karlie = User.new("klosstin","wework")

#using an attr_reader to see the username attribute of taylor
puts taylor.username

#use an attr_writer to change taylor's password
taylor.password = "sm@shw0rd"
puts taylor.profile_pic

#call class method
taylor.add_to_story("cool snap of me at KWK")
taylor.add_to_story("cool snap of me eating tamales")
taylor.add_to_story("cool snap of me in traffic :(")
p taylor.story
