##Ruby Methods - Day Two

def people_to_vegetables(person, vegetable)
    "turn #{person} into a #{vegetable}"
end

puts people_to_vegetables("Taylor", "carrot")
puts people_to_vegetables("Fernanda", "broccoli")
puts people_to_vegetables("Katelyn", "asparagus")
puts people_to_vegetables("Katherine", "potato")

def football_calculator(fcost, mcost) 
    fcost/mcost
end

puts football_calculator(60000000,1100)

puts "let's multiply two numbers together!
first number:"
num1 = gets.chomp
puts "second number"
num2 = gets.chomp
def product(n, n2)
    n.to_i*n2.to_i
end
puts "product of #{num1} and #{num2} = #{product(num1, num2)}"