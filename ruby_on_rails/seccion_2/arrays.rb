a = [1,2,3,4,5,6,7]
x = 1...10

puts a.last 
p x.to_a

arr = x.to_a

arr.shuffle # Change position of the elements
arr.reverse # Reverse the order of the array
# Bank (!) is to mutate the variable
arr.shuffle! 

arr.reverse!

p arr.length # Array size
p arr << 10 # Add element to array
p arr.last # Last element
p arr.unshift("Paco") # Add element to begin
 
p arr.append("Paco") # Add element to last

p arr.uniq! # Delete duplications

p arr.empty? # Is it empty?

p [].empty?

p arr.include?("Paco") # Array includes paco?

p arr.push("Luna") # Add to last

p last = arr.pop # Get last data

p stringPart = arr.join(", ") # Join all elements of array with a ","

p stringPart.split(", ") # Split all elements with a ,

p z = %w(paco es el mejor) # Create an array with a statement

# z = _    # To safe last command on IRB

p z[0] # Element on the index 0

puts "-" * 20

for index in z # Loop array
    print index
end
puts 
z.each do |thing| # Each block to loop array
    print thing
end
puts 
z.each {|food| print food.capitalize} # Best syntax with each

puts "-" * 20

data = (1..100).to_a.shuffle

p data.select {|number| number.even?} # Select only the data that meets the condition