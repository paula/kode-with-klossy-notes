##Ruby Arrays - Day Three

insta = ["Mom","my cat","Bob","Taylor","Santa"]

#get first item in array
puts insta[0]
puts insta.first

#get last item in array
puts insta[4]
puts insta[-1]
puts insta[insta.length-1]
puts insta.last

#change items in array
insta[0] = "Renee"
puts insta
insta[-1] = "my dog"
puts insta

#actions --these are temporary functions unless you set them equal to the original array
puts insta.reverse      #reverse order of items
puts insta.length       #returns the amount of items
puts insta.push(2348)   #adds item(s) to the end
puts insta.insert(3,2)  #inserts 2 into the array[3]