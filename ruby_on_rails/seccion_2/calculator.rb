puts "Simple calculator"
25.times { print "-"}
puts
puts "Enter the first number"
num_1=gets.chomp
puts "Enter the second number"
num_2 = gets.chomp
puts "Select an option"
puts "(1) multiplication"
puts "(2) add"
puts "(3) substranction"
puts "(4) division"
puts "(5) module"
operation = gets.chomp


def multiplication(num_1, num_2)
    puts "number is #{num_1.to_f * num_2.to_f}"
end


def add(num_1, num_2)
    puts "number is #{num_1.to_f + num_2.to_f}"
end


def substranction(num_1, num_2)
    puts "number is #{num_1.to_f - num_2.to_f}"
end


def division(num_1, num_2)
    puts "number is #{num_1.to_f / num_2.to_f}"
end

def mod(num_1, num_2)
    puts "number is #{num_1.to_f % num_2.to_f}"
end


case operation.to_i
when 1
    multiplication(num_1, num_2)
when 2
    add(num_1, num_2)
when 3
    substranction(num_1, num_2)
when 4
    division(num_1, num_2)
when 5
    mod(num_1, num_2)
else
end

# if operation.to_i == 1 
#     multiplication(num_1, num_2)
# elsif operation.to_i == 2
#     add(num_1, num_2)
# elsif operation.to_i == 3
#     substranction(num_1, num_2)
# elsif operation.to_i == 4
#     division(num_1, num_2)
# elsif operation.to_i == 5
#     mod(num_1, num_2)
# else
#     puts "Error"
# end
