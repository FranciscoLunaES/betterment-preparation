def sum_of_digits(first, second)
  total = 0
  range = (first..second)
  range = (second..first) if first > second
  range.each do |num|
    total += num
  end
  total
end

puts sum_of_digits(1, 10)
