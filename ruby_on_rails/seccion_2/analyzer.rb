puts "Enter your first name"
first_name = gets.chomp
puts "Enter your last name"
last_name = gets.chomp

puts "Your full name is #{first_name} #{last_name}"

puts "Your full name reversed is #{(first_name + " " + last_name).reverse}"

puts "Your full name is #{(first_name + last_name).length}"

first_name.nil?
first_name.empty?
first_name.length
first_name.reverse