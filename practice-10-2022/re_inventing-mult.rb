def no_multiplication(first, second)
  result = 0
  first.times { result += second }
  result
end

puts no_multiplication(15, 5)
