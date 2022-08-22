# 1. Un if que se ejecute cuando el input recibido del usuario no sea “Apple”
puts 'What is your favorite fruit?'
apple = gets.chomp

# If
puts "You don't say apple" if apple != 'apple'
# unless
puts "You don't say apple" unless apple == 'apple'

# 2. Un loop que ejecute checking for X… y si es par, imprima el número (5 ... 5000)

for number in 5..5000 do
  puts "Checking #{number}"
  next unless number.even?

  puts number
end
